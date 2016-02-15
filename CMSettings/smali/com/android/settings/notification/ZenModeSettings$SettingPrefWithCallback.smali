.class Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;
.super Lorg/flerovium/settings/notification/SettingPref;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/notification/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingPrefWithCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;

.field private mValue:I


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "setting"    # Ljava/lang/String;
    .param p4, "def"    # I
    .param p5, "values"    # [I

    .prologue
    .line 637
    invoke-direct/range {p0 .. p5}, Lorg/flerovium/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    .line 638
    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 676
    iget v0, p0, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mSetting:Ljava/lang/String;

    iget v3, p0, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mDefault:I

    invoke-static {v0, v1, v2, v3}, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;->getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public init(Lorg/flerovium/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;
    .locals 2
    .param p1, "settings"    # Lorg/flerovium/settings/SettingsPreferenceFragment;

    .prologue
    .line 663
    invoke-super {p0, p1}, Lorg/flerovium/settings/notification/SettingPref;->init(Lorg/flerovium/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    move-result-object v0

    .line 664
    .local v0, "ret":Landroid/preference/Preference;
    invoke-virtual {p1}, Lorg/flerovium/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;->getValue(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mValue:I

    .line 666
    return-object v0
.end method

.method public setCallback(Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;)V
    .locals 0
    .param p1, "callback"    # Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;

    .prologue
    .line 641
    iput-object p1, p0, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mCallback:Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;

    .line 642
    return-void
.end method

.method protected setSetting(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    .line 653
    iget v0, p0, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mValue:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    .line 658
    :goto_0
    return v0

    .line 654
    :cond_0
    iput p2, p0, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mValue:I

    .line 655
    iget-object v0, p0, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mCallback:Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mCallback:Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;

    invoke-interface {v0, p2}, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;->onSettingSelected(I)V

    .line 658
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/flerovium/settings/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_0
.end method

.method public setValueWithoutCallback(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    .line 671
    iput p2, p0, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mValue:I

    .line 672
    iget v0, p0, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;->putInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 647
    invoke-virtual {p0, p1}, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;->getValue(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lorg/flerovium/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mValue:I

    .line 648
    invoke-super {p0, p1}, Lorg/flerovium/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 649
    return-void
.end method
