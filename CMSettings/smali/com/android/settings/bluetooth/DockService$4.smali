.class Lorg/flerovium/settings/bluetooth/DockService$4;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/bluetooth/DockService;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lorg/flerovium/settings/bluetooth/DockService$4;->this$0:Lorg/flerovium/settings/bluetooth/DockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 596
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/DockService$4;->this$0:Lorg/flerovium/settings/bluetooth/DockService;

    # getter for: Lorg/flerovium/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lorg/flerovium/settings/bluetooth/DockService;->access$500(Lorg/flerovium/settings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/DockService$4;->this$0:Lorg/flerovium/settings/bluetooth/DockService;

    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/DockService$4;->this$0:Lorg/flerovium/settings/bluetooth/DockService;

    # getter for: Lorg/flerovium/settings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I
    invoke-static {v1}, Lorg/flerovium/settings/bluetooth/DockService;->access$600(Lorg/flerovium/settings/bluetooth/DockService;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/flerovium/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 600
    :cond_0
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/DockService$4;->this$0:Lorg/flerovium/settings/bluetooth/DockService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/flerovium/settings/bluetooth/DockService;->stopForeground(Z)V

    .line 601
    return-void
.end method
