.class Lorg/flerovium/settings/SoundSettings$1;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lorg/flerovium/settings/notification/IncreasingRingVolumePreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/SoundSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/SoundSettings;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lorg/flerovium/settings/SoundSettings$1;->this$0:Lorg/flerovium/settings/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartingSample()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 95
    iget-object v0, p0, Lorg/flerovium/settings/SoundSettings$1;->this$0:Lorg/flerovium/settings/SoundSettings;

    # getter for: Lorg/flerovium/settings/SoundSettings;->mVolumeCallback:Lorg/flerovium/settings/SoundSettings$VolumePreferenceCallback;
    invoke-static {v0}, Lorg/flerovium/settings/SoundSettings;->access$100(Lorg/flerovium/settings/SoundSettings;)Lorg/flerovium/settings/SoundSettings$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lorg/flerovium/settings/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 96
    iget-object v0, p0, Lorg/flerovium/settings/SoundSettings$1;->this$0:Lorg/flerovium/settings/SoundSettings;

    # getter for: Lorg/flerovium/settings/SoundSettings;->mHandler:Lorg/flerovium/settings/SoundSettings$H;
    invoke-static {v0}, Lorg/flerovium/settings/SoundSettings;->access$200(Lorg/flerovium/settings/SoundSettings;)Lorg/flerovium/settings/SoundSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/flerovium/settings/SoundSettings$H;->removeMessages(I)V

    .line 97
    iget-object v0, p0, Lorg/flerovium/settings/SoundSettings$1;->this$0:Lorg/flerovium/settings/SoundSettings;

    # getter for: Lorg/flerovium/settings/SoundSettings;->mHandler:Lorg/flerovium/settings/SoundSettings$H;
    invoke-static {v0}, Lorg/flerovium/settings/SoundSettings;->access$200(Lorg/flerovium/settings/SoundSettings;)Lorg/flerovium/settings/SoundSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lorg/flerovium/settings/SoundSettings$H;->sendEmptyMessageDelayed(IJ)Z

    .line 98
    return-void
.end method
