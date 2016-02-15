.class Lorg/flerovium/settings/wifi/WifiScanModeActivity$AlertDialogFragment$1;
.super Ljava/lang/Object;
.source "WifiScanModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/wifi/WifiScanModeActivity$AlertDialogFragment;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/wifi/WifiScanModeActivity$AlertDialogFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lorg/flerovium/settings/wifi/WifiScanModeActivity$AlertDialogFragment$1;->this$0:Lorg/flerovium/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lorg/flerovium/settings/wifi/WifiScanModeActivity$AlertDialogFragment$1;->this$0:Lorg/flerovium/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-virtual {v0}, Lorg/flerovium/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/wifi/WifiScanModeActivity;

    # invokes: Lorg/flerovium/settings/wifi/WifiScanModeActivity;->doNegativeClick()V
    invoke-static {v0}, Lorg/flerovium/settings/wifi/WifiScanModeActivity;->access$000(Lorg/flerovium/settings/wifi/WifiScanModeActivity;)V

    .line 140
    return-void
.end method
