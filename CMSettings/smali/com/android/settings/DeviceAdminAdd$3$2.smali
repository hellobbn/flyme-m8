.class Lorg/flerovium/settings/DeviceAdminAdd$3$2;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/DeviceAdminAdd$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/flerovium/settings/DeviceAdminAdd$3;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/DeviceAdminAdd$3;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lorg/flerovium/settings/DeviceAdminAdd$3$2;->this$1:Lorg/flerovium/settings/DeviceAdminAdd$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lorg/flerovium/settings/DeviceAdminAdd$3$2;->this$1:Lorg/flerovium/settings/DeviceAdminAdd$3;

    iget-object v0, v0, Lorg/flerovium/settings/DeviceAdminAdd$3;->this$0:Lorg/flerovium/settings/DeviceAdminAdd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/flerovium/settings/DeviceAdminAdd;->continueRemoveAction(Ljava/lang/CharSequence;)V

    .line 297
    return-void
.end method
