.class Lorg/flerovium/settings/bluetooth/BluetoothNameDialogFragment$3;
.super Ljava/lang/Object;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/bluetooth/BluetoothNameDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lorg/flerovium/settings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 142
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/flerovium/settings/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/flerovium/settings/bluetooth/BluetoothNameDialogFragment;->access$000(Lorg/flerovium/settings/bluetooth/BluetoothNameDialogFragment;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothNameDialogFragment;

    # getter for: Lorg/flerovium/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lorg/flerovium/settings/bluetooth/BluetoothNameDialogFragment;->access$100(Lorg/flerovium/settings/bluetooth/BluetoothNameDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
