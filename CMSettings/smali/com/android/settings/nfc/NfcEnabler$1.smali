.class Lorg/flerovium/settings/nfc/NfcEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/nfc/NfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/nfc/NfcEnabler;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/nfc/NfcEnabler;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lorg/flerovium/settings/nfc/NfcEnabler$1;->this$0:Lorg/flerovium/settings/nfc/NfcEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lorg/flerovium/settings/nfc/NfcEnabler$1;->this$0:Lorg/flerovium/settings/nfc/NfcEnabler;

    const-string v2, "android.nfc.settings.ADAPTER_STATE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # invokes: Lorg/flerovium/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V
    invoke-static {v1, v2}, Lorg/flerovium/settings/nfc/NfcEnabler;->access$000(Lorg/flerovium/settings/nfc/NfcEnabler;I)V

    .line 53
    :cond_0
    return-void
.end method
