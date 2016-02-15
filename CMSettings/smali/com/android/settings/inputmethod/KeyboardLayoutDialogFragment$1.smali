.class Lorg/flerovium/settings/inputmethod/KeyboardLayoutDialogFragment$1;
.super Ljava/lang/Object;
.source "KeyboardLayoutDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/inputmethod/KeyboardLayoutDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/inputmethod/KeyboardLayoutDialogFragment;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/inputmethod/KeyboardLayoutDialogFragment;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/flerovium/settings/inputmethod/KeyboardLayoutDialogFragment$1;->this$0:Lorg/flerovium/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lorg/flerovium/settings/inputmethod/KeyboardLayoutDialogFragment$1;->this$0:Lorg/flerovium/settings/inputmethod/KeyboardLayoutDialogFragment;

    # invokes: Lorg/flerovium/settings/inputmethod/KeyboardLayoutDialogFragment;->onKeyboardLayoutClicked(I)V
    invoke-static {v0, p2}, Lorg/flerovium/settings/inputmethod/KeyboardLayoutDialogFragment;->access$000(Lorg/flerovium/settings/inputmethod/KeyboardLayoutDialogFragment;I)V

    .line 108
    return-void
.end method
