.class Lorg/flerovium/settings/applications/RunningServiceDetails$1;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/applications/RunningServiceDetails;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/applications/RunningServiceDetails;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/applications/RunningServiceDetails;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lorg/flerovium/settings/applications/RunningServiceDetails$1;->this$0:Lorg/flerovium/settings/applications/RunningServiceDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 490
    iget-object v1, p0, Lorg/flerovium/settings/applications/RunningServiceDetails$1;->this$0:Lorg/flerovium/settings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Lorg/flerovium/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 491
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 494
    :cond_0
    return-void
.end method
