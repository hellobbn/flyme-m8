.class Lorg/flerovium/settings/RestrictedSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "RestrictedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/RestrictedSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/RestrictedSettingsFragment;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/RestrictedSettingsFragment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lorg/flerovium/settings/RestrictedSettingsFragment$1;->this$0:Lorg/flerovium/settings/RestrictedSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lorg/flerovium/settings/RestrictedSettingsFragment$1;->this$0:Lorg/flerovium/settings/RestrictedSettingsFragment;

    # getter for: Lorg/flerovium/settings/RestrictedSettingsFragment;->mChallengeRequested:Z
    invoke-static {v0}, Lorg/flerovium/settings/RestrictedSettingsFragment;->access$000(Lorg/flerovium/settings/RestrictedSettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/flerovium/settings/RestrictedSettingsFragment$1;->this$0:Lorg/flerovium/settings/RestrictedSettingsFragment;

    # setter for: Lorg/flerovium/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z
    invoke-static {v0, v1}, Lorg/flerovium/settings/RestrictedSettingsFragment;->access$102(Lorg/flerovium/settings/RestrictedSettingsFragment;Z)Z

    .line 65
    iget-object v0, p0, Lorg/flerovium/settings/RestrictedSettingsFragment$1;->this$0:Lorg/flerovium/settings/RestrictedSettingsFragment;

    # setter for: Lorg/flerovium/settings/RestrictedSettingsFragment;->mChallengeRequested:Z
    invoke-static {v0, v1}, Lorg/flerovium/settings/RestrictedSettingsFragment;->access$002(Lorg/flerovium/settings/RestrictedSettingsFragment;Z)Z

    .line 67
    :cond_0
    return-void
.end method
