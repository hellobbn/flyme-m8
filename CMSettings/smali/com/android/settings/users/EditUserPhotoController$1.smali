.class Lorg/flerovium/settings/users/EditUserPhotoController$1;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/users/EditUserPhotoController;-><init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/users/EditUserPhotoController;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/users/EditUserPhotoController;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lorg/flerovium/settings/users/EditUserPhotoController$1;->this$0:Lorg/flerovium/settings/users/EditUserPhotoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lorg/flerovium/settings/users/EditUserPhotoController$1;->this$0:Lorg/flerovium/settings/users/EditUserPhotoController;

    # invokes: Lorg/flerovium/settings/users/EditUserPhotoController;->showUpdatePhotoPopup()V
    invoke-static {v0}, Lorg/flerovium/settings/users/EditUserPhotoController;->access$000(Lorg/flerovium/settings/users/EditUserPhotoController;)V

    .line 96
    return-void
.end method
