.class public Lorg/flerovium/settings/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lorg/flerovium/settings/ButtonBarHandler;


# static fields
.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static final LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

.field private static sShowNoHomeNotice:Z


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private mActionBar:Landroid/app/ActionBar;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/flerovium/settings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDisplayHomeAsUpEnabled:Z

.field private mDisplaySearch:Z

.field private final mDynamicIndexableContentMonitor:Lorg/flerovium/settings/search/DynamicIndexableContentMonitor;

.field private mFragmentClass:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHomeActivitiesCount:I

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mIsShortcut:Z

.field private mIsShowingDashboard:Z

.field private mNeedToRevertToInitialFragment:Z

.field private mNextButton:Landroid/widget/Button;

.field private mNfcProfileCallback:Lorg/flerovium/settings/profiles/NFCProfileTagCallback;

.field private mResultIntentData:Landroid/content/Intent;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lorg/flerovium/settings/dashboard/SearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSwitchBar:Lorg/flerovium/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 221
    sput-boolean v3, Lorg/flerovium/settings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 264
    const/16 v0, 0x44

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lorg/flerovium/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lorg/flerovium/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-class v2, Lorg/flerovium/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lorg/flerovium/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lorg/flerovium/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lorg/flerovium/settings/sim/SimSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lorg/flerovium/settings/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lorg/flerovium/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lorg/flerovium/settings/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lorg/flerovium/settings/DateTimeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lorg/flerovium/settings/LocalePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lorg/flerovium/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lorg/flerovium/settings/voice/VoiceInputSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lorg/flerovium/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lorg/flerovium/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lorg/flerovium/settings/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lorg/flerovium/settings/HomeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lorg/flerovium/settings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lorg/flerovium/settings/DeviceInfoSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lorg/flerovium/settings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lorg/flerovium/settings/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lorg/flerovium/settings/notification/NotificationStation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lorg/flerovium/settings/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lorg/flerovium/settings/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lorg/flerovium/settings/UsageAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lorg/flerovium/settings/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lorg/flerovium/settings/DeviceAdminSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lorg/flerovium/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lorg/flerovium/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lorg/flerovium/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lorg/flerovium/settings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lorg/flerovium/settings/deviceinfo/Memory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lorg/flerovium/settings/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Lorg/flerovium/settings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Lorg/flerovium/settings/nfc/AndroidBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Lorg/flerovium/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-class v2, Lorg/flerovium/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Lorg/flerovium/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Lorg/flerovium/settings/accounts/AccountSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Lorg/flerovium/settings/CryptKeeperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Lorg/flerovium/settings/DataUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-class v2, Lorg/flerovium/settings/DreamSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Lorg/flerovium/settings/users/UserSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-class v2, Lorg/flerovium/settings/notification/NotificationAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Lorg/flerovium/settings/notification/ConditionProviderSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-class v2, Lorg/flerovium/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-class v2, Lorg/flerovium/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Lorg/flerovium/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Lorg/flerovium/settings/nfc/PaymentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Lorg/flerovium/settings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-class v2, Lorg/flerovium/settings/notification/ZenModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Lorg/flerovium/settings/SoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-class v2, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-class v2, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-class v2, Lorg/flerovium/settings/applications/InstalledAppDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-class v2, Lorg/flerovium/settings/notification/NotificationAppList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-class v2, Lorg/flerovium/settings/notification/AppNotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-class v2, Lorg/flerovium/settings/notification/OtherSoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-class v2, Lorg/flerovium/settings/quicklaunch/QuickLaunchSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-class v2, Lorg/flerovium/settings/ApnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-class v2, Lorg/flerovium/settings/blacklist/BlacklistSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-class v2, Lorg/flerovium/settings/profiles/ProfilesSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-class v2, Lorg/flerovium/settings/cyanogenmod/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-class v2, Lorg/flerovium/settings/notification/NotificationManagerSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-class v2, Lorg/flerovium/settings/lockscreen/LockScreenSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-class v2, Lorg/flerovium/settings/livedisplay/LiveDisplay;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-class v2, Lorg/flerovium/settings/cyanogenmod/DisplayRotation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-class v2, Lorg/flerovium/settings/contributors/ContributorsCloudFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lorg/flerovium/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 336
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    sput-object v0, Lorg/flerovium/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 231
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 343
    iput-boolean v2, p0, Lorg/flerovium/settings/SettingsActivity;->mBatteryPresent:Z

    .line 344
    new-instance v0, Lorg/flerovium/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lorg/flerovium/settings/SettingsActivity$1;-><init>(Lorg/flerovium/settings/SettingsActivity;)V

    iput-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 359
    new-instance v0, Lorg/flerovium/settings/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lorg/flerovium/settings/search/DynamicIndexableContentMonitor;-><init>()V

    iput-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lorg/flerovium/settings/search/DynamicIndexableContentMonitor;

    .line 377
    iput-boolean v1, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 386
    new-instance v0, Lorg/flerovium/settings/SettingsActivity$2;

    invoke-direct {v0, p0}, Lorg/flerovium/settings/SettingsActivity$2;-><init>(Lorg/flerovium/settings/SettingsActivity;)V

    iput-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 400
    iput-boolean v1, p0, Lorg/flerovium/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 401
    iput v2, p0, Lorg/flerovium/settings/SettingsActivity;->mHomeActivitiesCount:I

    return-void

    .line 231
    nop

    :array_0
    .array-data 4
        0x7f1002eb
        0x7f1002ec
        0x7f1002ed
        0x7f1002f0
        0x7f1002ee
        0x7f1002f2
        0x7f1002f4
        0x7f1002f5
        0x7f1002f6
        0x7f1002f9
        0x7f1002f8
        0x7f1002fa
        0x7f10030c
        0x7f100305
        0x7f1002fd
        0x7f100300
        0x7f100308
        0x7f1002fe
        0x7f10030d
        0x7f1002ff
        0x7f100306
        0x7f100309
        0x7f10030a
        0x7f100311
        0x7f10030b
        0x7f10030f
        0x7f100301
        0x7f100303
        0x7f100093
        0x7f100307
    .end array-data
.end method

.method static synthetic access$000(Lorg/flerovium/settings/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/flerovium/settings/SettingsActivity;

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/flerovium/settings/SettingsActivity;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lorg/flerovium/settings/SettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/flerovium/settings/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lorg/flerovium/settings/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lorg/flerovium/settings/SettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/flerovium/settings/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lorg/flerovium/settings/SettingsActivity;->invalidateCategories(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/flerovium/settings/SettingsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/flerovium/settings/SettingsActivity;

    .prologue
    .line 140
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lorg/flerovium/settings/SettingsActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lorg/flerovium/settings/SettingsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lorg/flerovium/settings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    return-void
.end method

.method private buildDashboardCategories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/flerovium/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1008
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lorg/flerovium/settings/dashboard/DashboardCategory;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1009
    const v0, 0x7f060014

    invoke-direct {p0, v0, p1}, Lorg/flerovium/settings/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;)V

    .line 1010
    invoke-direct {p0, p1}, Lorg/flerovium/settings/SettingsActivity;->updateTilesList(Ljava/util/List;)V

    .line 1011
    return-void
.end method

.method private getHomeActivitiesCount()I
    .locals 2

    .prologue
    .line 679
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v0, "homeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lorg/flerovium/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 681
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method private getMetaData()V
    .locals 5

    .prologue
    .line 1335
    :try_start_0
    invoke-virtual {p0}, Lorg/flerovium/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lorg/flerovium/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1337
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 1343
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 1338
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1339
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 1341
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get Metadata for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/flerovium/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 865
    iget-object v1, p0, Lorg/flerovium/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 877
    :cond_0
    :goto_0
    return-object v0

    .line 867
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 870
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 874
    :cond_3
    const-class v1, Lorg/flerovium/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private invalidateCategories(Z)V
    .locals 3
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v2, 0x1

    .line 438
    iget-object v1, p0, Lorg/flerovium/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 440
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 441
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg_data_force_refresh"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 443
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 501
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return v2

    .line 505
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lorg/flerovium/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 506
    sget-object v3, Lorg/flerovium/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 505
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 496
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 497
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadCategoriesFromResource(ILjava/util/List;)V
    .locals 28
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/flerovium/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1021
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Lorg/flerovium/settings/dashboard/DashboardCategory;>;"
    invoke-static/range {p0 .. p0}, Lorg/flerovium/settings/SettingsActivity;->showAdvancedPreferences(Landroid/content/Context;)Z

    move-result v18

    .line 1023
    .local v18, "showAdvancedPreferences":Z
    const/16 v16, 0x0

    .line 1025
    .local v16, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v16

    .line 1026
    invoke-static/range {v16 .. v16}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 1030
    .local v4, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    .local v22, "type":I
    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    const/16 v24, 0x2

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 1034
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1035
    .local v14, "nodeName":Ljava/lang/String;
    const-string v24, "dashboard-categories"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 1036
    new-instance v24, Ljava/lang/RuntimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "XML document must start with <preference-categories> tag; found"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v22    # "type":I
    :catch_0
    move-exception v7

    .line 1186
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "Error parsing categories"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1190
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v24

    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v24

    .line 1041
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v22    # "type":I
    :cond_3
    const/4 v6, 0x0

    .line 1043
    .local v6, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 1045
    .local v15, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_20

    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v15, :cond_20

    .line 1046
    :cond_5
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    const/16 v24, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 1050
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1051
    const-string v24, "dashboard-category"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 1052
    new-instance v5, Lorg/flerovium/settings/dashboard/DashboardCategory;

    invoke-direct {v5}, Lorg/flerovium/settings/dashboard/DashboardCategory;-><init>()V

    .line 1054
    .local v5, "category":Lorg/flerovium/settings/dashboard/DashboardCategory;
    sget-object v24, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Lorg/flerovium/settings/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 1056
    .local v17, "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x1

    const/16 v25, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    iput-wide v0, v5, Lorg/flerovium/settings/dashboard/DashboardCategory;->id:J

    .line 1060
    const/16 v24, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v21

    .line 1062
    .local v21, "tv":Landroid/util/TypedValue;
    if-eqz v21, :cond_6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 1063
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    if-eqz v24, :cond_12

    .line 1064
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v5, Lorg/flerovium/settings/dashboard/DashboardCategory;->titleRes:I

    .line 1069
    :cond_6
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 1071
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 1073
    .local v9, "innerDepth":I
    :cond_7
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_1e

    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v9, :cond_1e

    .line 1074
    :cond_8
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    const/16 v24, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    .line 1078
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1079
    .local v11, "innerNodeName":Ljava/lang/String;
    const-string v24, "dashboard-tile"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 1080
    new-instance v20, Lorg/flerovium/settings/dashboard/DashboardTile;

    invoke-direct/range {v20 .. v20}, Lorg/flerovium/settings/dashboard/DashboardTile;-><init>()V

    .line 1082
    .local v20, "tile":Lorg/flerovium/settings/dashboard/DashboardTile;
    sget-object v24, Lorg/flerovium/settings/R$styleable;->Preference:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Lorg/flerovium/settings/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 1083
    const/16 v24, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v21

    .line 1084
    if-eqz v21, :cond_b

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v24, v0

    const/16 v25, 0x12

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 1085
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v24, v0

    if-eqz v24, :cond_13

    const/16 v23, 0x1

    .line 1087
    .local v23, "value":Z
    :goto_3
    if-nez v18, :cond_9

    if-nez v23, :cond_a

    :cond_9
    if-eqz v18, :cond_14

    if-nez v23, :cond_14

    :cond_a
    const/16 v19, 0x1

    .line 1089
    .local v19, "skipAdvanced":Z
    :goto_4
    if-nez v19, :cond_7

    .line 1094
    .end local v19    # "skipAdvanced":Z
    .end local v23    # "value":Z
    :cond_b
    sget-object v24, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Lorg/flerovium/settings/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 1096
    const/16 v24, 0x1

    const/16 v25, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    iput-wide v0, v2, Lorg/flerovium/settings/dashboard/DashboardTile;->id:J

    .line 1099
    const/16 v24, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v21

    .line 1101
    if-eqz v21, :cond_d

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 1102
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    if-eqz v24, :cond_16

    .line 1105
    move-object/from16 v0, v20

    iget-wide v0, v0, Lorg/flerovium/settings/dashboard/DashboardTile;->id:J

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x7f1002f9

    cmp-long v24, v24, v26

    if-nez v24, :cond_c

    .line 1106
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    if-nez v24, :cond_15

    const/4 v13, 0x1

    .line 1108
    .local v13, "isPrimary":Z
    :goto_5
    new-instance v24, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintInstalled(Landroid/content/Context;)Z

    move-result v8

    .line 1110
    .local v8, "hasFingerprint":Z
    if-eqz v13, :cond_c

    if-eqz v8, :cond_c

    .line 1111
    const v24, 0x7f0903b5

    move/from16 v0, v24

    move-object/from16 v1, v21

    iput v0, v1, Landroid/util/TypedValue;->resourceId:I

    .line 1115
    .end local v8    # "hasFingerprint":Z
    .end local v13    # "isPrimary":Z
    :cond_c
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Lorg/flerovium/settings/dashboard/DashboardTile;->titleRes:I

    .line 1120
    :cond_d
    :goto_6
    const/16 v24, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v21

    .line 1122
    if-eqz v21, :cond_e

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 1123
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    if-eqz v24, :cond_17

    .line 1124
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Lorg/flerovium/settings/dashboard/DashboardTile;->summaryRes:I

    .line 1129
    :cond_e
    :goto_7
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Lorg/flerovium/settings/dashboard/DashboardTile;->iconRes:I

    .line 1131
    const/16 v24, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/flerovium/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 1133
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 1135
    sget-object v24, Lorg/flerovium/settings/R$styleable;->DashboardTile:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Lorg/flerovium/settings/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 1136
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/flerovium/settings/dashboard/DashboardTile;->switchControl:Ljava/lang/String;

    .line 1138
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 1140
    if-nez v6, :cond_f

    .line 1141
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1144
    .restart local v6    # "curBundle":Landroid/os/Bundle;
    :cond_f
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 1146
    .local v10, "innerDepth2":I
    :cond_10
    :goto_8
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_1a

    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v10, :cond_1a

    .line 1147
    :cond_11
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    const/16 v24, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    .line 1151
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1152
    .local v12, "innerNodeName2":Ljava/lang/String;
    const-string v24, "settings"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 1153
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const-string v25, "settings"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4, v6}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1154
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    .line 1187
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "category":Lorg/flerovium/settings/dashboard/DashboardCategory;
    .end local v6    # "curBundle":Landroid/os/Bundle;
    .end local v9    # "innerDepth":I
    .end local v10    # "innerDepth2":I
    .end local v11    # "innerNodeName":Ljava/lang/String;
    .end local v12    # "innerNodeName2":Ljava/lang/String;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "outerDepth":I
    .end local v17    # "sa":Landroid/content/res/TypedArray;
    .end local v20    # "tile":Lorg/flerovium/settings/dashboard/DashboardTile;
    .end local v21    # "tv":Landroid/util/TypedValue;
    .end local v22    # "type":I
    :catch_1
    move-exception v7

    .line 1188
    .local v7, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "Error parsing categories"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1066
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "category":Lorg/flerovium/settings/dashboard/DashboardCategory;
    .restart local v6    # "curBundle":Landroid/os/Bundle;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "outerDepth":I
    .restart local v17    # "sa":Landroid/content/res/TypedArray;
    .restart local v21    # "tv":Landroid/util/TypedValue;
    .restart local v22    # "type":I
    :cond_12
    :try_start_4
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v5, Lorg/flerovium/settings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1085
    .restart local v9    # "innerDepth":I
    .restart local v11    # "innerNodeName":Ljava/lang/String;
    .restart local v20    # "tile":Lorg/flerovium/settings/dashboard/DashboardTile;
    :cond_13
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 1087
    .restart local v23    # "value":Z
    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 1106
    .end local v23    # "value":Z
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 1117
    :cond_16
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/flerovium/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 1126
    :cond_17
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/flerovium/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_7

    .line 1156
    .restart local v10    # "innerDepth2":I
    .restart local v12    # "innerNodeName2":Ljava/lang/String;
    :cond_18
    const-string v24, "intent"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-static {v0, v1, v4}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/flerovium/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_8

    .line 1160
    :cond_19
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8

    .line 1164
    .end local v12    # "innerNodeName2":Ljava/lang/String;
    :cond_1a
    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v24

    if-lez v24, :cond_1b

    .line 1165
    move-object/from16 v0, v20

    iput-object v6, v0, Lorg/flerovium/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1166
    const/4 v6, 0x0

    .line 1170
    :cond_1b
    move-object/from16 v0, v20

    iget-wide v0, v0, Lorg/flerovium/settings/dashboard/DashboardTile;->id:J

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x7f1002ee

    cmp-long v24, v24, v26

    if-nez v24, :cond_1c

    invoke-static/range {p0 .. p0}, Lorg/flerovium/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 1171
    :cond_1c
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/flerovium/settings/dashboard/DashboardCategory;->addTile(Lorg/flerovium/settings/dashboard/DashboardTile;)V

    goto/16 :goto_2

    .line 1175
    .end local v10    # "innerDepth2":I
    .end local v20    # "tile":Lorg/flerovium/settings/dashboard/DashboardTile;
    :cond_1d
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1179
    .end local v11    # "innerNodeName":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1181
    .end local v5    # "category":Lorg/flerovium/settings/dashboard/DashboardCategory;
    .end local v9    # "innerDepth":I
    .end local v17    # "sa":Landroid/content/res/TypedArray;
    .end local v21    # "tv":Landroid/util/TypedValue;
    :cond_1f
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1190
    :cond_20
    if-eqz v16, :cond_21

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1192
    :cond_21
    return-void
.end method

.method public static requestHomeNotice()V
    .locals 1

    .prologue
    .line 1360
    const/4 v0, 0x1

    sput-boolean v0, Lorg/flerovium/settings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1361
    return-void
.end method

.method private revertToInitialFragment()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1423
    iput-boolean v1, p0, Lorg/flerovium/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1424
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchResultsFragment:Lorg/flerovium/settings/dashboard/SearchResultsSummary;

    .line 1425
    iput-boolean v1, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1426
    invoke-virtual {p0}, Lorg/flerovium/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1428
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1431
    :cond_0
    return-void
.end method

.method private setTitleFromBackStack()I
    .locals 4

    .prologue
    .line 727
    invoke-virtual {p0}, Lorg/flerovium/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 729
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 730
    iget v2, p0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitleResId:I

    if-lez v2, :cond_0

    .line 731
    iget v2, p0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lorg/flerovium/settings/SettingsActivity;->setTitle(I)V

    .line 735
    :goto_0
    const/4 v1, 0x0

    .line 741
    .end local v1    # "count":I
    :goto_1
    return v1

    .line 733
    .restart local v1    # "count":I
    :cond_0
    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lorg/flerovium/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 738
    :cond_1
    invoke-virtual {p0}, Lorg/flerovium/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 739
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lorg/flerovium/settings/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    goto :goto_1
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 746
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 747
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 748
    invoke-virtual {p0, v1}, Lorg/flerovium/settings/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 752
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {p0, v0}, Lorg/flerovium/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 755
    :cond_0
    return-void

    .line 750
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 685
    const-string v5, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 686
    .local v3, "initialTitleResId":I
    if-lez v3, :cond_1

    .line 687
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 688
    iput v3, p0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitleResId:I

    .line 690
    const-string v5, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 692
    .local v4, "initialTitleResPackageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 694
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4, v5, v6}, Lorg/flerovium/settings/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 696
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 697
    iget-object v5, p0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lorg/flerovium/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 698
    const/4 v5, -0x1

    iput v5, p0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 700
    .restart local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 701
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 704
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget v5, p0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v5}, Lorg/flerovium/settings/SettingsActivity;->setTitle(I)V

    goto :goto_0

    .line 707
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_1
    iput v6, p0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitleResId:I

    .line 708
    const-string v5, ":settings:show_fragment_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 709
    .local v2, "initialTitle":Ljava/lang/String;
    if-eqz v2, :cond_2

    .end local v2    # "initialTitle":Ljava/lang/String;
    :goto_1
    iput-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 710
    iget-object v5, p0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lorg/flerovium/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 709
    .restart local v2    # "initialTitle":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lorg/flerovium/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method public static showAdvancedPreferences(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1475
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11200c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1477
    .local v0, "forceAdvancedMode":Z
    if-eqz v0, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "advanced_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z

    .prologue
    .line 979
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lorg/flerovium/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 980
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 983
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 984
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lorg/flerovium/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 985
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f10022c

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 986
    if-eqz p7, :cond_1

    .line 987
    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 989
    :cond_1
    if-eqz p4, :cond_2

    .line 990
    const-string v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 992
    :cond_2
    if-lez p5, :cond_4

    .line 993
    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 997
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 998
    invoke-virtual {p0}, Lorg/flerovium/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 999
    return-object v0

    .line 994
    :cond_4
    if-eqz p6, :cond_3

    .line 995
    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1403
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchResultsFragment:Lorg/flerovium/settings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_0

    .line 1416
    :goto_0
    return-void

    .line 1406
    :cond_0
    invoke-virtual {p0}, Lorg/flerovium/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f10022c

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 1407
    .local v8, "current":Landroid/app/Fragment;
    if-eqz v8, :cond_1

    instance-of v0, v8, Lorg/flerovium/settings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_1

    .line 1408
    check-cast v8, Lorg/flerovium/settings/dashboard/SearchResultsSummary;

    .end local v8    # "current":Landroid/app/Fragment;
    iput-object v8, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchResultsFragment:Lorg/flerovium/settings/dashboard/SearchResultsSummary;

    .line 1414
    :goto_1
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchResultsFragment:Lorg/flerovium/settings/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lorg/flerovium/settings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 1415
    iput-boolean v4, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    goto :goto_0

    .line 1410
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v0, Lorg/flerovium/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const v5, 0x7f090cba

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lorg/flerovium/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/dashboard/SearchResultsSummary;

    iput-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchResultsFragment:Lorg/flerovium/settings/dashboard/SearchResultsSummary;

    goto :goto_1
.end method

.method private updateHomeSettingTiles(Lorg/flerovium/settings/dashboard/DashboardTile;)Z
    .locals 6
    .param p1, "tile"    # Lorg/flerovium/settings/dashboard/DashboardTile;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1298
    const-string v4, "home_prefs"

    invoke-virtual {p0, v4, v3}, Lorg/flerovium/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1299
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v4, "do_show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1330
    :goto_0
    return v2

    .line 1304
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/flerovium/settings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v4

    iput v4, p0, Lorg/flerovium/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 1305
    iget v4, p0, Lorg/flerovium/settings/SettingsActivity;->mHomeActivitiesCount:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 1310
    sget-boolean v4, Lorg/flerovium/settings/SettingsActivity;->sShowNoHomeNotice:Z

    if-eqz v4, :cond_1

    .line 1311
    const/4 v4, 0x0

    sput-boolean v4, Lorg/flerovium/settings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1312
    invoke-static {p0}, Lorg/flerovium/settings/dashboard/NoHomeDialogFragment;->show(Landroid/app/Activity;)V

    :cond_1
    move v2, v3

    .line 1314
    goto :goto_0

    .line 1319
    :cond_2
    iget-object v3, p1, Lorg/flerovium/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    if-nez v3, :cond_3

    .line 1320
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p1, Lorg/flerovium/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1322
    :cond_3
    iget-object v3, p1, Lorg/flerovium/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const-string v4, "show"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "do_show"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1324
    :catch_0
    move-exception v0

    .line 1326
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Settings"

    const-string v4, "Problem looking up home activity!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateTilesList(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/flerovium/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1195
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lorg/flerovium/settings/dashboard/DashboardCategory;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/flerovium/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v16, "show"

    sget-object v17, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v18, "eng"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 1199
    .local v11, "showDev":Z
    const-string v15, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/flerovium/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    .line 1200
    .local v14, "um":Landroid/os/UserManager;
    const-string v15, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/flerovium/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 1202
    .local v9, "pm":Landroid/os/PowerManager;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    .line 1203
    .local v12, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v12, :cond_14

    .line 1205
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/flerovium/settings/dashboard/DashboardCategory;

    .line 1208
    .local v2, "category":Lorg/flerovium/settings/dashboard/DashboardCategory;
    iget-wide v0, v2, Lorg/flerovium/settings/dashboard/DashboardCategory;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v6, v0

    .line 1209
    .local v6, "id":I
    invoke-virtual {v2}, Lorg/flerovium/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v15

    add-int/lit8 v7, v15, -0x1

    .line 1210
    .local v7, "n":I
    :goto_1
    if-ltz v7, :cond_13

    .line 1212
    invoke-virtual {v2, v7}, Lorg/flerovium/settings/dashboard/DashboardCategory;->getTile(I)Lorg/flerovium/settings/dashboard/DashboardTile;

    move-result-object v13

    .line 1213
    .local v13, "tile":Lorg/flerovium/settings/dashboard/DashboardTile;
    const/4 v10, 0x0

    .line 1214
    .local v10, "removeTile":Z
    iget-wide v0, v13, Lorg/flerovium/settings/dashboard/DashboardTile;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v6, v0

    .line 1215
    const v15, 0x7f1002f1

    if-eq v6, v15, :cond_0

    const v15, 0x7f1002f3

    if-eq v6, v15, :cond_0

    const v15, 0x7f1002fc

    if-eq v6, v15, :cond_0

    const v15, 0x7f1002fb

    if-ne v6, v15, :cond_4

    .line 1218
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/flerovium/settings/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lorg/flerovium/settings/dashboard/DashboardTile;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1219
    const/4 v10, 0x1

    .line 1283
    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/flerovium/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v15, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v15

    if-nez v15, :cond_2

    .line 1285
    const/4 v10, 0x1

    .line 1288
    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v2}, Lorg/flerovium/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v15

    if-ge v7, v15, :cond_3

    .line 1289
    invoke-virtual {v2, v7}, Lorg/flerovium/settings/dashboard/DashboardCategory;->removeTile(I)V

    .line 1291
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 1292
    goto :goto_1

    .line 1221
    :cond_4
    const v15, 0x7f1002ec

    if-ne v6, v15, :cond_5

    .line 1223
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.wifi"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1224
    const/4 v10, 0x1

    goto :goto_2

    .line 1226
    :cond_5
    const v15, 0x7f1002ed

    if-ne v6, v15, :cond_6

    .line 1228
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.bluetooth"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1229
    const/4 v10, 0x1

    goto :goto_2

    .line 1231
    :cond_6
    const v15, 0x7f1002ef

    if-ne v6, v15, :cond_9

    .line 1232
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.telephony"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 1233
    const/4 v10, 0x1

    goto :goto_2

    .line 1234
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    .line 1235
    const/4 v10, 0x1

    goto :goto_2

    .line 1236
    :cond_8
    const-string v15, "ro.radio.noril"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1237
    const/4 v10, 0x1

    goto :goto_2

    .line 1239
    :cond_9
    const v15, 0x7f1002f0

    if-ne v6, v15, :cond_a

    .line 1241
    const-string v15, "network_management"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v8

    .line 1244
    .local v8, "netManager":Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v8}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-nez v15, :cond_1

    .line 1245
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1250
    .end local v8    # "netManager":Landroid/os/INetworkManagementService;
    :cond_a
    const v15, 0x7f1002fd

    if-ne v6, v15, :cond_b

    .line 1253
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/flerovium/settings/SettingsActivity;->mBatteryPresent:Z

    if-nez v15, :cond_1

    .line 1254
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1256
    :cond_b
    const v15, 0x7f100301

    if-ne v6, v15, :cond_c

    .line 1257
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/flerovium/settings/SettingsActivity;->updateHomeSettingTiles(Lorg/flerovium/settings/dashboard/DashboardTile;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1258
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1260
    :cond_c
    const v15, 0x7f1002ff

    if-ne v6, v15, :cond_10

    .line 1261
    const-string v15, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/flerovium/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    invoke-virtual {v15}, Landroid/os/UserManager;->getUserCount()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_f

    const/4 v3, 0x1

    .line 1264
    .local v3, "hasMultipleUsers":Z
    :goto_3
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v15

    if-nez v15, :cond_d

    if-eqz v3, :cond_e

    :cond_d
    invoke-static {}, Lorg/flerovium/settings/Utils;->isMonkeyRunning()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1268
    :cond_e
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1261
    .end local v3    # "hasMultipleUsers":Z
    :cond_f
    const/4 v3, 0x0

    goto :goto_3

    .line 1270
    :cond_10
    const v15, 0x7f10030f

    if-ne v6, v15, :cond_11

    .line 1271
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.software.print"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 1273
    .local v4, "hasPrintingSupport":Z
    if-nez v4, :cond_1

    .line 1274
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1276
    .end local v4    # "hasPrintingSupport":Z
    :cond_11
    const v15, 0x7f100310

    if-ne v6, v15, :cond_1

    .line 1277
    if-eqz v11, :cond_12

    const-string v15, "no_debugging_features"

    invoke-virtual {v14, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1279
    :cond_12
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1203
    .end local v10    # "removeTile":Z
    .end local v13    # "tile":Lorg/flerovium/settings/dashboard/DashboardTile;
    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1247
    .restart local v8    # "netManager":Landroid/os/INetworkManagementService;
    .restart local v10    # "removeTile":Z
    .restart local v13    # "tile":Lorg/flerovium/settings/dashboard/DashboardTile;
    :catch_0
    move-exception v15

    goto/16 :goto_2

    .line 1294
    .end local v2    # "category":Lorg/flerovium/settings/dashboard/DashboardCategory;
    .end local v6    # "id":I
    .end local v7    # "n":I
    .end local v8    # "netManager":Landroid/os/INetworkManagementService;
    .end local v10    # "removeTile":Z
    .end local v13    # "tile":Lorg/flerovium/settings/dashboard/DashboardTile;
    :cond_14
    return-void
.end method


# virtual methods
.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 951
    invoke-virtual {p0, p2, p3}, Lorg/flerovium/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 952
    invoke-virtual {p0}, Lorg/flerovium/settings/SettingsActivity;->finish()V

    .line 953
    return-void
.end method

.method public getDashboardCategories(Z)Ljava/util/List;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lorg/flerovium/settings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 411
    :cond_0
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/flerovium/settings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    .line 413
    :cond_1
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 840
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 841
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lorg/flerovium/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 844
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 845
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 846
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v5, ":settings:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 848
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 849
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 853
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 854
    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 857
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 851
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "modIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 857
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSwitchBar()Lorg/flerovium/settings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mSwitchBar:Lorg/flerovium/settings/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 832
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/flerovium/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 833
    sget-object v1, Lorg/flerovium/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 835
    :goto_1
    return v1

    .line 832
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 835
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public needToRevertToInitialFragment()V
    .locals 1

    .prologue
    .line 1419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/flerovium/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1420
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 716
    invoke-direct {p0}, Lorg/flerovium/settings/SettingsActivity;->setTitleFromBackStack()I

    .line 717
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 1381
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 447
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 448
    invoke-static {p0}, Lorg/flerovium/settings/search/Index;->getInstance(Landroid/content/Context;)Lorg/flerovium/settings/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lorg/flerovium/settings/search/Index;->update()V

    .line 449
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 513
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 516
    invoke-direct/range {p0 .. p0}, Lorg/flerovium/settings/SettingsActivity;->getMetaData()V

    .line 518
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 519
    .local v19, "intent":Landroid/content/Intent;
    const-string v2, "settings:ui_options"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v5, "settings:ui_options"

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 523
    :cond_0
    const-string v2, "development"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lorg/flerovium/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/flerovium/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 527
    const-string v2, ":settings:show_fragment"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "initialFragmentName":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lorg/flerovium/settings/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static/range {v19 .. v19}, Lorg/flerovium/settings/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":settings:show_fragment_as_shortcut"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/flerovium/settings/SettingsActivity;->mIsShortcut:Z

    .line 532
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 533
    .local v18, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    .line 535
    .local v17, "className":Ljava/lang/String;
    const-class v2, Lorg/flerovium/settings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/flerovium/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 540
    const-class v2, Lorg/flerovium/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_2
    const/16 v20, 0x1

    .line 544
    .local v20, "isSubSettings":Z
    :goto_1
    if-eqz v20, :cond_3

    .line 546
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/SettingsActivity;->getThemeResId()I

    move-result v22

    .line 547
    .local v22, "themeResId":I
    const v2, 0x7f0a0055

    move/from16 v0, v22

    if-eq v0, v2, :cond_3

    const v2, 0x7f0a0057

    move/from16 v0, v22

    if-eq v0, v2, :cond_3

    .line 549
    const v2, 0x7f0a0050

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/flerovium/settings/SettingsActivity;->setTheme(I)V

    .line 553
    .end local v22    # "themeResId":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/flerovium/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_c

    const v2, 0x7f0400e6

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/flerovium/settings/SettingsActivity;->setContentView(I)V

    .line 556
    const v2, 0x7f10022c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/flerovium/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/flerovium/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 558
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 560
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/flerovium/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_4

    .line 561
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/flerovium/settings/search/Index;->getInstance(Landroid/content/Context;)Lorg/flerovium/settings/search/Index;

    move-result-object v2

    invoke-virtual {v2}, Lorg/flerovium/settings/search/Index;->update()V

    .line 564
    :cond_4
    if-eqz p1, :cond_d

    .line 567
    const-string v2, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 568
    const-string v2, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/flerovium/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 570
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/flerovium/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 572
    const-string v2, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 574
    .local v16, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/flerovium/settings/dashboard/DashboardCategory;>;"
    if-eqz v16, :cond_5

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/flerovium/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/flerovium/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 577
    invoke-direct/range {p0 .. p0}, Lorg/flerovium/settings/SettingsActivity;->setTitleFromBackStack()I

    .line 580
    :cond_5
    const-string v2, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/flerovium/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 581
    const-string v2, ":settings:show_search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/flerovium/settings/SettingsActivity;->mDisplaySearch:Z

    .line 582
    const-string v2, ":settings:home_activities_count"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/flerovium/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 614
    .end local v16    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/flerovium/settings/dashboard/DashboardCategory;>;"
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/flerovium/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/flerovium/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_6

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/flerovium/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/flerovium/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/flerovium/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/flerovium/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 619
    :cond_6
    const v2, 0x7f10022d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/flerovium/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/flerovium/settings/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/flerovium/settings/SettingsActivity;->mSwitchBar:Lorg/flerovium/settings/widget/SwitchBar;

    .line 622
    const-string v2, "settings_prefs_show_button_bar"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 624
    const v2, 0x7f1001b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/flerovium/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 625
    .local v14, "buttonBar":Landroid/view/View;
    if-eqz v14, :cond_9

    .line 626
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 628
    const v2, 0x7f1001b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/flerovium/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 629
    .local v13, "backButton":Landroid/widget/Button;
    new-instance v2, Lorg/flerovium/settings/SettingsActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/flerovium/settings/SettingsActivity$3;-><init>(Lorg/flerovium/settings/SettingsActivity;)V

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    const v2, 0x7f1001b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/flerovium/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 636
    .local v21, "skipButton":Landroid/widget/Button;
    new-instance v2, Lorg/flerovium/settings/SettingsActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/flerovium/settings/SettingsActivity$4;-><init>(Lorg/flerovium/settings/SettingsActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    const v2, 0x7f100050

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/flerovium/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/flerovium/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/flerovium/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lorg/flerovium/settings/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/flerovium/settings/SettingsActivity$5;-><init>(Lorg/flerovium/settings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    const-string v2, "settings_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 652
    const-string v2, "settings_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 653
    .local v15, "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/flerovium/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 660
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_7
    :goto_4
    const-string v2, "settings_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 661
    const-string v2, "settings_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 662
    .restart local v15    # "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 663
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 669
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_8
    :goto_5
    const-string v2, "settings_prefs_show_skip"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 670
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 675
    .end local v13    # "backButton":Landroid/widget/Button;
    .end local v14    # "buttonBar":Landroid/view/View;
    .end local v21    # "skipButton":Landroid/widget/Button;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lorg/flerovium/settings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/flerovium/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 676
    return-void

    .line 529
    .end local v17    # "className":Ljava/lang/String;
    .end local v18    # "cn":Landroid/content/ComponentName;
    .end local v20    # "isSubSettings":Z
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 540
    .restart local v17    # "className":Ljava/lang/String;
    .restart local v18    # "cn":Landroid/content/ComponentName;
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 553
    .restart local v20    # "isSubSettings":Z
    :cond_c
    const v2, 0x7f0400e7

    goto/16 :goto_2

    .line 585
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/flerovium/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_10

    .line 588
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/flerovium/settings/SettingsActivity;->mIsShortcut:Z

    if-eqz v2, :cond_e

    .line 589
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/flerovium/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 590
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/flerovium/settings/SettingsActivity;->mDisplaySearch:Z

    .line 598
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/flerovium/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 600
    const-string v2, ":settings:show_fragment_args"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 601
    .local v4, "initialArguments":Landroid/os/Bundle;
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lorg/flerovium/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_3

    .line 591
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_e
    if-eqz v20, :cond_f

    .line 592
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/flerovium/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 593
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/flerovium/settings/SettingsActivity;->mDisplaySearch:Z

    goto :goto_6

    .line 595
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/flerovium/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 596
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/flerovium/settings/SettingsActivity;->mDisplaySearch:Z

    goto :goto_6

    .line 605
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/flerovium/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 607
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/flerovium/settings/SettingsActivity;->mDisplaySearch:Z

    .line 608
    const v2, 0x7f090cb9

    move-object/from16 v0, p0

    iput v2, v0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitleResId:I

    .line 609
    const-class v2, Lorg/flerovium/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/flerovium/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lorg/flerovium/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_3

    .line 657
    .restart local v13    # "backButton":Landroid/widget/Button;
    .restart local v14    # "buttonBar":Landroid/view/View;
    .restart local v15    # "buttonText":Ljava/lang/String;
    .restart local v21    # "skipButton":Landroid/widget/Button;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/flerovium/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 666
    :cond_12
    invoke-virtual {v13, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 462
    iget-boolean v2, p0, Lorg/flerovium/settings/SettingsActivity;->mDisplaySearch:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 492
    :goto_0
    return v2

    .line 466
    :cond_0
    invoke-virtual {p0}, Lorg/flerovium/settings/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 467
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f110007

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 470
    iget-object v1, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 472
    .local v1, "query":Ljava/lang/String;
    const v2, 0x7f100329

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 473
    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 475
    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v2, :cond_2

    :cond_1
    move v2, v3

    .line 476
    goto :goto_0

    .line 479
    :cond_2
    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchResultsFragment:Lorg/flerovium/settings/dashboard/SearchResultsSummary;

    if-eqz v2, :cond_3

    .line 480
    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchResultsFragment:Lorg/flerovium/settings/dashboard/SearchResultsSummary;

    iget-object v3, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v3}, Lorg/flerovium/settings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 483
    :cond_3
    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 484
    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 485
    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 487
    iget-boolean v2, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v2, :cond_4

    .line 488
    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    .line 490
    :cond_4
    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v1, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    move v2, v4

    .line 492
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 822
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 824
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/flerovium/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 827
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1459
    packed-switch p1, :pswitch_data_0

    .line 1466
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1461
    :pswitch_0
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1464
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1459
    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1394
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1395
    iget-boolean v0, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 1396
    invoke-direct {p0}, Lorg/flerovium/settings/SettingsActivity;->revertToInitialFragment()V

    .line 1399
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1386
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1387
    invoke-direct {p0}, Lorg/flerovium/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1389
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1447
    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1448
    const-string v1, "android.nfc.settings.TAG"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 1449
    .local v0, "detectedTag":Landroid/nfc/Tag;
    iget-object v1, p0, Lorg/flerovium/settings/SettingsActivity;->mNfcProfileCallback:Lorg/flerovium/settings/profiles/NFCProfileTagCallback;

    if-eqz v1, :cond_0

    .line 1450
    iget-object v1, p0, Lorg/flerovium/settings/SettingsActivity;->mNfcProfileCallback:Lorg/flerovium/settings/profiles/NFCProfileTagCallback;

    invoke-interface {v1, v0}, Lorg/flerovium/settings/profiles/NFCProfileTagCallback;->onTagRead(Landroid/nfc/Tag;)V

    .line 1455
    .end local v0    # "detectedTag":Landroid/nfc/Tag;
    :cond_0
    :goto_0
    return-void

    .line 1454
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 814
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 816
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/flerovium/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 817
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lorg/flerovium/settings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v0}, Lorg/flerovium/settings/search/DynamicIndexableContentMonitor;->unregister()V

    .line 818
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 418
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 419
    .local v3, "titleRes":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/flerovium/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    const v3, 0x7f090511

    .line 427
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/flerovium/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 429
    const/4 v0, 0x1

    return v0

    .line 424
    :cond_1
    const v3, 0x7f09050f

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 1372
    iput-object p1, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1373
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchResultsFragment:Lorg/flerovium/settings/dashboard/SearchResultsSummary;

    if-nez v0, :cond_0

    .line 1374
    const/4 v0, 0x0

    .line 1376
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchResultsFragment:Lorg/flerovium/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lorg/flerovium/settings/dashboard/SearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1365
    invoke-direct {p0}, Lorg/flerovium/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1366
    iput-object p1, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1367
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchResultsFragment:Lorg/flerovium/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lorg/flerovium/settings/dashboard/SearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 786
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 788
    invoke-direct {p0}, Lorg/flerovium/settings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v0

    .line 789
    .local v0, "newHomeActivityCount":I
    iget v1, p0, Lorg/flerovium/settings/SettingsActivity;->mHomeActivitiesCount:I

    if-eq v0, v1, :cond_0

    .line 790
    iput v0, p0, Lorg/flerovium/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 791
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/flerovium/settings/SettingsActivity;->invalidateCategories(Z)V

    .line 794
    :cond_0
    new-instance v1, Lorg/flerovium/settings/SettingsActivity$6;

    invoke-direct {v1, p0}, Lorg/flerovium/settings/SettingsActivity$6;-><init>(Lorg/flerovium/settings/SettingsActivity;)V

    iput-object v1, p0, Lorg/flerovium/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 800
    iget-object v1, p0, Lorg/flerovium/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 803
    iget-object v1, p0, Lorg/flerovium/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lorg/flerovium/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 805
    iget-object v1, p0, Lorg/flerovium/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lorg/flerovium/settings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v1, p0}, Lorg/flerovium/settings/search/DynamicIndexableContentMonitor;->register(Landroid/content/Context;)V

    .line 807
    iget-boolean v1, p0, Lorg/flerovium/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 808
    iget-object v1, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/flerovium/settings/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 810
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 759
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 761
    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 762
    const-string v2, ":settings:categories"

    iget-object v3, p0, Lorg/flerovium/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 765
    :cond_0
    const-string v2, ":settings:show_home_as_up"

    iget-boolean v3, p0, Lorg/flerovium/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 766
    const-string v2, ":settings:show_search"

    iget-boolean v3, p0, Lorg/flerovium/settings/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 768
    iget-boolean v2, p0, Lorg/flerovium/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v2, :cond_1

    .line 774
    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 775
    .local v0, "isExpanded":Z
    :goto_0
    const-string v2, ":settings:search_menu_expanded"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 777
    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, "query":Ljava/lang/String;
    :goto_1
    const-string v2, ":settings:search_query"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    .end local v0    # "isExpanded":Z
    .end local v1    # "query":Ljava/lang/String;
    :cond_1
    const-string v2, ":settings:home_activities_count"

    iget v3, p0, Lorg/flerovium/settings/SettingsActivity;->mHomeActivitiesCount:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 782
    return-void

    .line 774
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 777
    .restart local v0    # "isExpanded":Z
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 722
    invoke-direct {p0}, Lorg/flerovium/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 723
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 453
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 455
    iget-boolean v0, p0, Lorg/flerovium/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 456
    invoke-direct {p0}, Lorg/flerovium/settings/SettingsActivity;->revertToInitialFragment()V

    .line 458
    :cond_0
    return-void
.end method

.method public setNfcProfileCallback(Lorg/flerovium/settings/profiles/NFCProfileTagCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/flerovium/settings/profiles/NFCProfileTagCallback;

    .prologue
    .line 1442
    iput-object p1, p0, Lorg/flerovium/settings/SettingsActivity;->mNfcProfileCallback:Lorg/flerovium/settings/profiles/NFCProfileTagCallback;

    .line 1443
    return-void
.end method

.method public setResultIntentData(Landroid/content/Intent;)V
    .locals 0
    .param p1, "resultIntentData"    # Landroid/content/Intent;

    .prologue
    .line 1438
    iput-object p1, p0, Lorg/flerovium/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    .line 1439
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 1356
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/flerovium/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 963
    invoke-virtual {p0}, Lorg/flerovium/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 964
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f10022c

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 965
    if-eqz p2, :cond_0

    .line 966
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 967
    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 971
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 972
    return-void

    .line 969
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 8
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 901
    const/4 v6, 0x0

    .line 902
    .local v6, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 903
    if-eqz p4, :cond_1

    .line 904
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 910
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lorg/flerovium/settings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-static/range {v0 .. v7}, Lorg/flerovium/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 912
    return-void

    .line 907
    :cond_1
    const-string v6, ""

    goto :goto_0
.end method

.method public startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 928
    const/4 v4, 0x0

    .line 929
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 930
    if-eqz p4, :cond_1

    .line 931
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 937
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lorg/flerovium/settings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lorg/flerovium/settings/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    .line 939
    return-void

    .line 934
    :cond_1
    const-string v4, ""

    goto :goto_0
.end method
