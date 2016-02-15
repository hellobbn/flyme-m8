.class Lorg/flerovium/settings/location/LocationMode$3;
.super Ljava/lang/Object;
.source "LocationMode.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/location/LocationMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/location/LocationMode;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/location/LocationMode;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lorg/flerovium/settings/location/LocationMode$3;->this$0:Lorg/flerovium/settings/location/LocationMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/flerovium/settings/location/LocationMode$3;->this$0:Lorg/flerovium/settings/location/LocationMode;

    # invokes: Lorg/flerovium/settings/location/LocationMode;->initUserPrefService()V
    invoke-static {v0}, Lorg/flerovium/settings/location/LocationMode;->access$300(Lorg/flerovium/settings/location/LocationMode;)V

    .line 152
    return-void
.end method
