.class Lorg/flerovium/settings/applications/RunningState$ServiceItem;
.super Lorg/flerovium/settings/applications/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceItem"
.end annotation


# instance fields
.field mMergedItem:Lorg/flerovium/settings/applications/RunningState$MergedItem;

.field mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

.field mServiceInfo:Landroid/content/pm/ServiceInfo;

.field mShownAsStarted:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/flerovium/settings/applications/RunningState$BaseItem;-><init>(ZI)V

    .line 345
    return-void
.end method
