.class public Lorg/flerovium/settings/accessibility/ToggleGlobalGesturePreferenceFragment;
.super Lorg/flerovium/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleGlobalGesturePreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/flerovium/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Lorg/flerovium/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 35
    iget-object v0, p0, Lorg/flerovium/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->mToggleSwitch:Lorg/flerovium/settings/widget/ToggleSwitch;

    new-instance v1, Lorg/flerovium/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;

    invoke-direct {v1, p0}, Lorg/flerovium/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;-><init>(Lorg/flerovium/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lorg/flerovium/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lorg/flerovium/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 44
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/flerovium/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_accessibility_global_gesture_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 30
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
