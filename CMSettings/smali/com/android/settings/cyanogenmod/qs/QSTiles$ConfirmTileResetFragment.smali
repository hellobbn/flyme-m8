.class public Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;
.super Landroid/app/DialogFragment;
.source "QSTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/cyanogenmod/qs/QSTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmTileResetFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 324
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 325
    invoke-virtual {p0, v0}, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;->setShowsDialog(Z)V

    .line 326
    invoke-virtual {p0, v0}, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;->setCancelable(Z)V

    .line 327
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 331
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0903ca

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0903dc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0903db

    new-instance v2, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment$1;

    invoke-direct {v2, p0}, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment$1;-><init>(Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
