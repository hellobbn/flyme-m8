.class Lorg/flerovium/settings/deviceinfo/Status$2;
.super Landroid/telephony/PhoneStateListener;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lorg/flerovium/settings/deviceinfo/Status$2;->this$0:Lorg/flerovium/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lorg/flerovium/settings/deviceinfo/Status$2;->this$0:Lorg/flerovium/settings/deviceinfo/Status;

    # invokes: Lorg/flerovium/settings/deviceinfo/Status;->updateDataState()V
    invoke-static {v0}, Lorg/flerovium/settings/deviceinfo/Status;->access$400(Lorg/flerovium/settings/deviceinfo/Status;)V

    .line 229
    iget-object v0, p0, Lorg/flerovium/settings/deviceinfo/Status$2;->this$0:Lorg/flerovium/settings/deviceinfo/Status;

    # invokes: Lorg/flerovium/settings/deviceinfo/Status;->updateNetworkType()V
    invoke-static {v0}, Lorg/flerovium/settings/deviceinfo/Status;->access$500(Lorg/flerovium/settings/deviceinfo/Status;)V

    .line 230
    return-void
.end method
