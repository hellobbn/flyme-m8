.class Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$1;
.super Ljava/lang/Object;
.source "QSTiles.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;

.field final synthetic val$tilesList:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$1;->this$0:Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;

    iput-object p2, p0, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$1;->val$tilesList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 294
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 295
    iget-object v1, p0, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$1;->this$0:Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;

    invoke-virtual {v1}, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles;

    .line 296
    .local v0, "tiles":Lorg/flerovium/settings/cyanogenmod/qs/QSTiles;
    if-eqz v0, :cond_0

    .line 297
    iget-object v1, p0, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$1;->val$tilesList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/flerovium/settings/cyanogenmod/qs/QSTileHolder;

    iget-object v1, v1, Lorg/flerovium/settings/cyanogenmod/qs/QSTileHolder;->value:Ljava/lang/String;

    # invokes: Lorg/flerovium/settings/cyanogenmod/qs/QSTiles;->addTile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles;->access$000(Lorg/flerovium/settings/cyanogenmod/qs/QSTiles;Ljava/lang/String;)V

    .line 299
    :cond_0
    return-void
.end method
