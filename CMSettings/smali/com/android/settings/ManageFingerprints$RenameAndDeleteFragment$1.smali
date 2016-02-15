.class Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment$1;
.super Ljava/lang/Object;
.source "ManageFingerprints.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment$1;->this$0:Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 432
    iget-object v1, p0, Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment$1;->this$0:Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment;

    # getter for: Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment;->mFingerNameEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment;->access$400(Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment$1;->this$0:Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment;

    invoke-virtual {v1}, Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lorg/flerovium/settings/ManageFingerprints$FingerprintListFragment;

    iget-object v2, p0, Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment$1;->this$0:Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment;

    # getter for: Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {v2}, Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment;->access$500(Lorg/flerovium/settings/ManageFingerprints$RenameAndDeleteFragment;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/flerovium/settings/ManageFingerprints$FingerprintListFragment;->doRename(Landroid/hardware/fingerprint/Fingerprint;Ljava/lang/String;)V

    .line 435
    return-void
.end method
