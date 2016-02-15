.class Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment$1;
.super Ljava/lang/Object;
.source "QSTiles.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment$1;->this$0:Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 337
    iget-object v1, p0, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment$1;->this$0:Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;

    invoke-virtual {v1}, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lorg/flerovium/settings/cyanogenmod/qs/QSTiles;->resetTiles(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v1}, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles;->access$200(Landroid/content/Context;)Ljava/lang/String;

    .line 338
    iget-object v1, p0, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment$1;->this$0:Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;

    invoke-virtual {v1}, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles;

    .line 339
    .local v0, "targetFragment":Lorg/flerovium/settings/cyanogenmod/qs/QSTiles;
    if-eqz v0, :cond_0

    .line 340
    # invokes: Lorg/flerovium/settings/cyanogenmod/qs/QSTiles;->rebuildTiles()V
    invoke-static {v0}, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles;->access$300(Lorg/flerovium/settings/cyanogenmod/qs/QSTiles;)V

    .line 342
    :cond_0
    return-void
.end method
