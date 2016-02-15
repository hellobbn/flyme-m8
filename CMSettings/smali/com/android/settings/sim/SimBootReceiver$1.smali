.class Lorg/flerovium/settings/sim/SimBootReceiver$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SimBootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/sim/SimBootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/sim/SimBootReceiver;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/sim/SimBootReceiver;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lorg/flerovium/settings/sim/SimBootReceiver$1;->this$0:Lorg/flerovium/settings/sim/SimBootReceiver;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/flerovium/settings/sim/SimBootReceiver$1;->this$0:Lorg/flerovium/settings/sim/SimBootReceiver;

    # invokes: Lorg/flerovium/settings/sim/SimBootReceiver;->detectChangeAndNotify()V
    invoke-static {v0}, Lorg/flerovium/settings/sim/SimBootReceiver;->access$000(Lorg/flerovium/settings/sim/SimBootReceiver;)V

    .line 151
    return-void
.end method
