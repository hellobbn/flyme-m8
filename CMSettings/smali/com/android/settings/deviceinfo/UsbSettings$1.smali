.class Lorg/flerovium/settings/deviceinfo/UsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lorg/flerovium/settings/deviceinfo/UsbSettings$1;->this$0:Lorg/flerovium/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lorg/flerovium/settings/deviceinfo/UsbSettings$1;->this$0:Lorg/flerovium/settings/deviceinfo/UsbSettings;

    const-string v3, "accessory"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lorg/flerovium/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z
    invoke-static {v2, v3}, Lorg/flerovium/settings/deviceinfo/UsbSettings;->access$002(Lorg/flerovium/settings/deviceinfo/UsbSettings;Z)Z

    .line 82
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsbAccessoryMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/flerovium/settings/deviceinfo/UsbSettings$1;->this$0:Lorg/flerovium/settings/deviceinfo/UsbSettings;

    # getter for: Lorg/flerovium/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z
    invoke-static {v4}, Lorg/flerovium/settings/deviceinfo/UsbSettings;->access$000(Lorg/flerovium/settings/deviceinfo/UsbSettings;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "connected"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 84
    .local v1, "connected":Z
    if-nez v1, :cond_1

    .line 85
    iget-object v2, p0, Lorg/flerovium/settings/deviceinfo/UsbSettings$1;->this$0:Lorg/flerovium/settings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Lorg/flerovium/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090286

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 87
    iget-object v2, p0, Lorg/flerovium/settings/deviceinfo/UsbSettings$1;->this$0:Lorg/flerovium/settings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Lorg/flerovium/settings/deviceinfo/UsbSettings;->finish()V

    .line 95
    .end local v1    # "connected":Z
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local v1    # "connected":Z
    :cond_1
    iget-object v2, p0, Lorg/flerovium/settings/deviceinfo/UsbSettings$1;->this$0:Lorg/flerovium/settings/deviceinfo/UsbSettings;

    # setter for: Lorg/flerovium/settings/deviceinfo/UsbSettings;->mOperationInProgress:Z
    invoke-static {v2, v5}, Lorg/flerovium/settings/deviceinfo/UsbSettings;->access$102(Lorg/flerovium/settings/deviceinfo/UsbSettings;Z)Z

    .line 92
    iget-object v2, p0, Lorg/flerovium/settings/deviceinfo/UsbSettings$1;->this$0:Lorg/flerovium/settings/deviceinfo/UsbSettings;

    # invokes: Lorg/flerovium/settings/deviceinfo/UsbSettings;->updateUsbFunctionState()V
    invoke-static {v2}, Lorg/flerovium/settings/deviceinfo/UsbSettings;->access$200(Lorg/flerovium/settings/deviceinfo/UsbSettings;)V

    goto :goto_0
.end method
