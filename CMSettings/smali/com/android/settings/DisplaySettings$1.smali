.class Lorg/flerovium/settings/DisplaySettings$1;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 129
    iput-object p1, p0, Lorg/flerovium/settings/DisplaySettings$1;->this$0:Lorg/flerovium/settings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lorg/flerovium/settings/DisplaySettings$1;->this$0:Lorg/flerovium/settings/DisplaySettings;

    # invokes: Lorg/flerovium/settings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V
    invoke-static {v0}, Lorg/flerovium/settings/DisplaySettings;->access$000(Lorg/flerovium/settings/DisplaySettings;)V

    .line 133
    iget-object v0, p0, Lorg/flerovium/settings/DisplaySettings$1;->this$0:Lorg/flerovium/settings/DisplaySettings;

    # invokes: Lorg/flerovium/settings/DisplaySettings;->updateAccelerometerRotationSwitch()V
    invoke-static {v0}, Lorg/flerovium/settings/DisplaySettings;->access$100(Lorg/flerovium/settings/DisplaySettings;)V

    .line 134
    return-void
.end method
