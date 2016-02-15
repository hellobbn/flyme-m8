.class Lorg/flerovium/settings/ScreenColorSettings$ColorModeAdaper$1;
.super Ljava/lang/Object;
.source "ScreenColorSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/ScreenColorSettings$ColorModeAdaper;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/flerovium/settings/ScreenColorSettings$ColorModeAdaper;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/ScreenColorSettings$ColorModeAdaper;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lorg/flerovium/settings/ScreenColorSettings$ColorModeAdaper$1;->this$1:Lorg/flerovium/settings/ScreenColorSettings$ColorModeAdaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/flerovium/settings/ScreenColorSettings$ColorModeAdaper$1;->this$1:Lorg/flerovium/settings/ScreenColorSettings$ColorModeAdaper;

    iget-object v1, v1, Lorg/flerovium/settings/ScreenColorSettings$ColorModeAdaper;->this$0:Lorg/flerovium/settings/ScreenColorSettings;

    const-class v2, Lorg/flerovium/settings/CustomScreenColor;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lorg/flerovium/settings/ScreenColorSettings$ColorModeAdaper$1;->this$1:Lorg/flerovium/settings/ScreenColorSettings$ColorModeAdaper;

    iget-object v1, v1, Lorg/flerovium/settings/ScreenColorSettings$ColorModeAdaper;->this$0:Lorg/flerovium/settings/ScreenColorSettings;

    invoke-virtual {v1, v0}, Lorg/flerovium/settings/ScreenColorSettings;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method
