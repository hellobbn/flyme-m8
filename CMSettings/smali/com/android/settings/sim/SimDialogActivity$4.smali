.class Lorg/flerovium/settings/sim/SimDialogActivity$4;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/sim/SimDialogActivity;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/sim/SimDialogActivity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lorg/flerovium/settings/sim/SimDialogActivity$4;->this$0:Lorg/flerovium/settings/sim/SimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 203
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/flerovium/settings/sim/SimDialogActivity$4;->this$0:Lorg/flerovium/settings/sim/SimDialogActivity;

    invoke-virtual {v0}, Lorg/flerovium/settings/sim/SimDialogActivity;->finish()V

    .line 206
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
