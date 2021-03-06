.class public Lorg/flerovium/settings/net/DataUsageMeteredSettings;
.super Lorg/flerovium/settings/SettingsPreferenceFragment;
.source "DataUsageMeteredSettings.java"

# interfaces
.implements Lorg/flerovium/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/flerovium/settings/net/DataUsageMeteredSettings$MeteredPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lorg/flerovium/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mMobileCategory:Landroid/preference/PreferenceCategory;

.field private mPolicyEditor:Lorg/flerovium/settings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mWifiCategory:Landroid/preference/PreferenceCategory;

.field private mWifiDisabled:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lorg/flerovium/settings/net/DataUsageMeteredSettings$1;

    invoke-direct {v0}, Lorg/flerovium/settings/net/DataUsageMeteredSettings$1;-><init>()V

    sput-object v0, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->SEARCH_INDEX_DATA_PROVIDER:Lorg/flerovium/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/flerovium/settings/SettingsPreferenceFragment;-><init>()V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lorg/flerovium/settings/net/DataUsageMeteredSettings;)Lorg/flerovium/settings/net/NetworkPolicyEditor;
    .locals 1
    .param p0, "x0"    # Lorg/flerovium/settings/net/DataUsageMeteredSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->mPolicyEditor:Lorg/flerovium/settings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method private buildWifiPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 111
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 112
    .local v0, "networkId":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 113
    .local v2, "template":Landroid/net/NetworkTemplate;
    new-instance v1, Lorg/flerovium/settings/net/DataUsageMeteredSettings$MeteredPreference;

    invoke-direct {v1, p0, p1, v2}, Lorg/flerovium/settings/net/DataUsageMeteredSettings$MeteredPreference;-><init>(Lorg/flerovium/settings/net/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    .line 114
    .local v1, "pref":Lorg/flerovium/settings/net/DataUsageMeteredSettings$MeteredPreference;
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/flerovium/settings/net/DataUsageMeteredSettings$MeteredPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    return-object v1
.end method

.method private updateNetworks(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->mMobileCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 89
    iget-object v2, p0, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 90
    invoke-static {p1}, Lorg/flerovium/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 92
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->buildWifiPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 97
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->mWifiDisabled:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 99
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lorg/flerovium/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 67
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 68
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 70
    new-instance v1, Lorg/flerovium/settings/net/NetworkPolicyEditor;

    iget-object v2, p0, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lorg/flerovium/settings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->mPolicyEditor:Lorg/flerovium/settings/net/NetworkPolicyEditor;

    .line 71
    iget-object v1, p0, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->mPolicyEditor:Lorg/flerovium/settings/net/NetworkPolicyEditor;

    invoke-virtual {v1}, Lorg/flerovium/settings/net/NetworkPolicyEditor;->read()V

    .line 73
    const v1, 0x7f060015

    invoke-virtual {p0, v1}, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->addPreferencesFromResource(I)V

    .line 74
    const-string v1, "mobile"

    invoke-virtual {p0, v1}, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->mMobileCategory:Landroid/preference/PreferenceCategory;

    .line 75
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    .line 76
    const-string v1, "wifi_disabled"

    invoke-virtual {p0, v1}, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->mWifiDisabled:Landroid/preference/Preference;

    .line 78
    invoke-direct {p0, v0}, Lorg/flerovium/settings/net/DataUsageMeteredSettings;->updateNetworks(Landroid/content/Context;)V

    .line 79
    return-void
.end method
