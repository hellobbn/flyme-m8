.class Lorg/flerovium/settings/location/SettingsInjector$ServiceSettingClickedListener;
.super Ljava/lang/Object;
.source "SettingsInjector.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/location/SettingsInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceSettingClickedListener"
.end annotation


# instance fields
.field private mInfo:Lorg/flerovium/settings/location/InjectedSetting;

.field final synthetic this$0:Lorg/flerovium/settings/location/SettingsInjector;


# direct methods
.method public constructor <init>(Lorg/flerovium/settings/location/SettingsInjector;Lorg/flerovium/settings/location/InjectedSetting;)V
    .locals 0
    .param p2, "info"    # Lorg/flerovium/settings/location/InjectedSetting;

    .prologue
    .line 291
    iput-object p1, p0, Lorg/flerovium/settings/location/SettingsInjector$ServiceSettingClickedListener;->this$0:Lorg/flerovium/settings/location/SettingsInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p2, p0, Lorg/flerovium/settings/location/SettingsInjector$ServiceSettingClickedListener;->mInfo:Lorg/flerovium/settings/location/InjectedSetting;

    .line 293
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    .local v0, "settingIntent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/flerovium/settings/location/SettingsInjector$ServiceSettingClickedListener;->mInfo:Lorg/flerovium/settings/location/InjectedSetting;

    iget-object v1, v1, Lorg/flerovium/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lorg/flerovium/settings/location/SettingsInjector$ServiceSettingClickedListener;->mInfo:Lorg/flerovium/settings/location/InjectedSetting;

    iget-object v2, v2, Lorg/flerovium/settings/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Lorg/flerovium/settings/location/SettingsInjector$ServiceSettingClickedListener;->this$0:Lorg/flerovium/settings/location/SettingsInjector;

    # getter for: Lorg/flerovium/settings/location/SettingsInjector;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/flerovium/settings/location/SettingsInjector;->access$200(Lorg/flerovium/settings/location/SettingsInjector;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/flerovium/settings/location/SettingsInjector$ServiceSettingClickedListener;->mInfo:Lorg/flerovium/settings/location/InjectedSetting;

    iget-object v2, v2, Lorg/flerovium/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 304
    const/4 v1, 0x1

    return v1
.end method
