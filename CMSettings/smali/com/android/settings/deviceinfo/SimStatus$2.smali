.class Lorg/flerovium/settings/deviceinfo/SimStatus$2;
.super Landroid/telephony/PhoneStateListener;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/deviceinfo/SimStatus;->updatePhoneInfos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/deviceinfo/SimStatus;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 360
    iput-object p1, p0, Lorg/flerovium/settings/deviceinfo/SimStatus$2;->this$0:Lorg/flerovium/settings/deviceinfo/SimStatus;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lorg/flerovium/settings/deviceinfo/SimStatus$2;->this$0:Lorg/flerovium/settings/deviceinfo/SimStatus;

    # invokes: Lorg/flerovium/settings/deviceinfo/SimStatus;->updateDataState()V
    invoke-static {v0}, Lorg/flerovium/settings/deviceinfo/SimStatus;->access$200(Lorg/flerovium/settings/deviceinfo/SimStatus;)V

    .line 364
    iget-object v0, p0, Lorg/flerovium/settings/deviceinfo/SimStatus$2;->this$0:Lorg/flerovium/settings/deviceinfo/SimStatus;

    # invokes: Lorg/flerovium/settings/deviceinfo/SimStatus;->updateNetworkType()V
    invoke-static {v0}, Lorg/flerovium/settings/deviceinfo/SimStatus;->access$300(Lorg/flerovium/settings/deviceinfo/SimStatus;)V

    .line 365
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 374
    iget-object v0, p0, Lorg/flerovium/settings/deviceinfo/SimStatus$2;->this$0:Lorg/flerovium/settings/deviceinfo/SimStatus;

    # invokes: Lorg/flerovium/settings/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lorg/flerovium/settings/deviceinfo/SimStatus;->access$400(Lorg/flerovium/settings/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V

    .line 375
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 369
    iget-object v0, p0, Lorg/flerovium/settings/deviceinfo/SimStatus$2;->this$0:Lorg/flerovium/settings/deviceinfo/SimStatus;

    invoke-virtual {v0, p1}, Lorg/flerovium/settings/deviceinfo/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 370
    return-void
.end method
