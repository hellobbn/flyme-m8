.class Lorg/flerovium/settings/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/ApnSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/ApnSettings;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lorg/flerovium/settings/ApnSettings$1;->this$0:Lorg/flerovium/settings/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    # invokes: Lorg/flerovium/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {p2}, Lorg/flerovium/settings/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 120
    .local v0, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v1, Lorg/flerovium/settings/ApnSettings$2;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 130
    .end local v0    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local v0    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :pswitch_0
    # getter for: Lorg/flerovium/settings/ApnSettings;->mRestoreDefaultApnMode:Z
    invoke-static {}, Lorg/flerovium/settings/ApnSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Lorg/flerovium/settings/ApnSettings$1;->this$0:Lorg/flerovium/settings/ApnSettings;

    # invokes: Lorg/flerovium/settings/ApnSettings;->fillList()V
    invoke-static {v1}, Lorg/flerovium/settings/ApnSettings;->access$200(Lorg/flerovium/settings/ApnSettings;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v1, p0, Lorg/flerovium/settings/ApnSettings$1;->this$0:Lorg/flerovium/settings/ApnSettings;

    # getter for: Lorg/flerovium/settings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lorg/flerovium/settings/ApnSettings;->access$300(Lorg/flerovium/settings/ApnSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/flerovium/settings/ApnSettings$1;->this$0:Lorg/flerovium/settings/ApnSettings;

    # getter for: Lorg/flerovium/settings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lorg/flerovium/settings/ApnSettings;->access$300(Lorg/flerovium/settings/ApnSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    :cond_2
    iget-object v1, p0, Lorg/flerovium/settings/ApnSettings$1;->this$0:Lorg/flerovium/settings/ApnSettings;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lorg/flerovium/settings/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
