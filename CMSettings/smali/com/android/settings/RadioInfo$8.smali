.class Lorg/flerovium/settings/RadioInfo$8;
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
    .line 887
    iput-object p1, p0, Lorg/flerovium/settings/RadioInfo$8;->this$0:Lorg/flerovium/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 889
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 895
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.FdnList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    iget-object v1, p0, Lorg/flerovium/settings/RadioInfo$8;->this$0:Lorg/flerovium/settings/RadioInfo;

    invoke-virtual {v1, v0}, Lorg/flerovium/settings/RadioInfo;->startActivity(Landroid/content/Intent;)V

    .line 898
    const/4 v1, 0x1

    return v1
.end method
