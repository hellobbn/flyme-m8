.class Lorg/flerovium/settings/ProxySelector$1;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/ProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/ProxySelector;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/ProxySelector;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lorg/flerovium/settings/ProxySelector$1;->this$0:Lorg/flerovium/settings/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 248
    iget-object v0, p0, Lorg/flerovium/settings/ProxySelector$1;->this$0:Lorg/flerovium/settings/ProxySelector;

    invoke-virtual {v0}, Lorg/flerovium/settings/ProxySelector;->saveToDb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/flerovium/settings/ProxySelector$1;->this$0:Lorg/flerovium/settings/ProxySelector;

    invoke-virtual {v0}, Lorg/flerovium/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 251
    :cond_0
    return-void
.end method
