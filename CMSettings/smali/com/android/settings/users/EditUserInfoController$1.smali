.class Lorg/flerovium/settings/users/EditUserInfoController$1;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILorg/flerovium/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/users/EditUserInfoController;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/users/EditUserInfoController;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lorg/flerovium/settings/users/EditUserInfoController$1;->this$0:Lorg/flerovium/settings/users/EditUserInfoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lorg/flerovium/settings/users/EditUserInfoController$1;->this$0:Lorg/flerovium/settings/users/EditUserInfoController;

    invoke-virtual {v0}, Lorg/flerovium/settings/users/EditUserInfoController;->clear()V

    .line 187
    return-void
.end method
