.class Lorg/flerovium/settings/PointerSpeedPreference$1;
.super Landroid/database/ContentObserver;
.source "PointerSpeedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/PointerSpeedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/PointerSpeedPreference;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/PointerSpeedPreference;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/flerovium/settings/PointerSpeedPreference$1;->this$0:Lorg/flerovium/settings/PointerSpeedPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 46
    iget-object v0, p0, Lorg/flerovium/settings/PointerSpeedPreference$1;->this$0:Lorg/flerovium/settings/PointerSpeedPreference;

    # invokes: Lorg/flerovium/settings/PointerSpeedPreference;->onSpeedChanged()V
    invoke-static {v0}, Lorg/flerovium/settings/PointerSpeedPreference;->access$000(Lorg/flerovium/settings/PointerSpeedPreference;)V

    .line 47
    return-void
.end method
