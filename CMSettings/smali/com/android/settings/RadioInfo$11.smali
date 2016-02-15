.class Lorg/flerovium/settings/RadioInfo$11;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/RadioInfo;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 925
    iput-object p1, p0, Lorg/flerovium/settings/RadioInfo$11;->this$0:Lorg/flerovium/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 927
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 928
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/flerovium/settings/RadioInfo$11;->this$0:Lorg/flerovium/settings/RadioInfo;

    const-class v2, Lorg/flerovium/settings/BandMode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 929
    iget-object v1, p0, Lorg/flerovium/settings/RadioInfo$11;->this$0:Lorg/flerovium/settings/RadioInfo;

    invoke-virtual {v1, v0}, Lorg/flerovium/settings/RadioInfo;->startActivity(Landroid/content/Intent;)V

    .line 930
    const/4 v1, 0x1

    return v1
.end method
