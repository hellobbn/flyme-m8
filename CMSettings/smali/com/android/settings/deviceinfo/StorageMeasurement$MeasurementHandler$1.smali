.class Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->this$1:Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 302
    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    .line 304
    .local v0, "imcs":Lcom/android/internal/app/IMediaContainerService;
    iget-object v1, p0, Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->this$1:Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    # setter for: Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v1, v0}, Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->access$102(Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 305
    iget-object v1, p0, Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->this$1:Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v2, 0x1

    # setter for: Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z
    invoke-static {v1, v2}, Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->access$202(Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z

    .line 306
    iget-object v1, p0, Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->this$1:Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    iget-object v2, p0, Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->this$1:Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 311
    iget-object v0, p0, Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->this$1:Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x0

    # setter for: Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z
    invoke-static {v0, v1}, Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->access$202(Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z

    .line 312
    iget-object v0, p0, Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->this$1:Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/flerovium/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 313
    return-void
.end method
