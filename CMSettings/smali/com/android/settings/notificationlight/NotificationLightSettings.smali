.class public Lorg/flerovium/settings/notificationlight/NotificationLightSettings;
.super Lorg/flerovium/settings/SettingsPreferenceFragment;
.source "NotificationLightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;
    }
.end annotation


# instance fields
.field private mApplicationPrefList:Landroid/preference/PreferenceGroup;

.field private mCallPref:Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

.field private mCustomEnabledPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

.field private mDefaultColor:I

.field private mDefaultLedOff:I

.field private mDefaultLedOn:I

.field private mDefaultPref:Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

.field private mEnabledPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

.field private mMenu:Landroid/view/Menu;

.field private mMultipleLedsEnabledPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

.field private mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

.field private mPackageAdapter:Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;

.field private mPackageList:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnLightsPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

.field private mVoicemailPref:Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/flerovium/settings/SettingsPreferenceFragment;-><init>()V

    .line 484
    return-void
.end method

.method static synthetic access$000(Lorg/flerovium/settings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/flerovium/settings/notificationlight/NotificationLightSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->removeCustomApplicationPref(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/flerovium/settings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/flerovium/settings/notificationlight/NotificationLightSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->addCustomApplicationPref(Ljava/lang/String;)V

    return-void
.end method

.method private addCustomApplicationPref(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v1, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;

    .line 280
    .local v0, "pkg":Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;
    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;

    .end local v0    # "pkg":Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;
    iget v1, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 282
    .restart local v0    # "pkg":Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;
    iget-object v1, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    .line 284
    invoke-direct {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 286
    :cond_0
    return-void
.end method

.method private parsePackageList()Z
    .locals 9

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "notification_light_pulse_custom_values"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "baseString":Ljava/lang/String;
    iget-object v7, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 300
    const/4 v7, 0x0

    .line 319
    :goto_0
    return v7

    .line 303
    :cond_0
    iput-object v2, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    .line 304
    iget-object v7, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 306
    if-eqz v2, :cond_3

    .line 307
    const-string v7, "\\|"

    invoke-static {v2, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "array":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v4, v0, v3

    .line 309
    .local v4, "item":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 308
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 312
    :cond_2
    invoke-static {v4}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;->fromString(Ljava/lang/String;)Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;

    move-result-object v6

    .line 313
    .local v6, "pkg":Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;
    if-eqz v6, :cond_1

    .line 314
    iget-object v7, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    iget-object v8, v6, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 319
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "pkg":Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;
    :cond_3
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private refreshCustomApplicationPrefs()V
    .locals 8

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 249
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->parsePackageList()Z

    move-result v5

    if-nez v5, :cond_1

    .line 276
    :cond_0
    return-void

    .line 254
    :cond_1
    iget-object v5, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_0

    .line 255
    iget-object v5, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 257
    iget-object v5, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;

    .line 259
    .local v3, "pkg":Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;
    :try_start_0
    iget-object v5, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v3, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 261
    .local v2, "info":Landroid/content/pm/PackageInfo;
    new-instance v4, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    iget-object v5, v3, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v3, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v4, v0, v5, v6, v7}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;-><init>(Landroid/content/Context;III)V

    .line 264
    .local v4, "pref":Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;
    iget-object v5, v3, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;->setKey(Ljava/lang/String;)V

    .line 265
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 267
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;->setPersistent(Z)V

    .line 268
    invoke-virtual {v4, p0}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    iget-object v5, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "pref":Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private refreshDefault()V
    .locals 12

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 210
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v10, "notification_light_pulse_default_color"

    iget v11, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 212
    .local v3, "color":I
    const-string v10, "notification_light_pulse_default_led_on"

    iget v11, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 214
    .local v6, "timeOn":I
    const-string v10, "notification_light_pulse_default_led_off"

    iget v11, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 217
    .local v5, "timeOff":I
    iget-object v10, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v3, v6, v5}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 220
    iget-object v10, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mCallPref:Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    if-eqz v10, :cond_0

    .line 221
    const-string v10, "notification_light_pulse_call_color"

    iget v11, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 223
    .local v0, "callColor":I
    const-string v10, "notification_light_pulse_call_led_on"

    iget v11, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 225
    .local v2, "callTimeOn":I
    const-string v10, "notification_light_pulse_call_led_off"

    iget v11, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 228
    .local v1, "callTimeOff":I
    iget-object v10, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mCallPref:Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v0, v2, v1}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 231
    .end local v0    # "callColor":I
    .end local v1    # "callTimeOff":I
    .end local v2    # "callTimeOn":I
    :cond_0
    iget-object v10, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    if-eqz v10, :cond_1

    .line 232
    const-string v10, "notification_light_pulse_vmail_color"

    iget v11, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 234
    .local v7, "vmailColor":I
    const-string v10, "notification_light_pulse_vmail_led_on"

    iget v11, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 236
    .local v9, "vmailTimeOn":I
    const-string v10, "notification_light_pulse_vmail_led_off"

    iget v11, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 239
    .local v8, "vmailTimeOff":I
    iget-object v10, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v7, v9, v8}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 242
    .end local v7    # "vmailColor":I
    .end local v8    # "vmailTimeOff":I
    .end local v9    # "vmailTimeOn":I
    :cond_1
    const-string v10, "applications_list"

    invoke-virtual {p0, v10}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    iput-object v10, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    .line 243
    iget-object v10, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 244
    return-void
.end method

.method private removeCustomApplicationPref(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    .line 291
    invoke-direct {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 293
    :cond_0
    return-void
.end method

.method private savePackageList(Z)V
    .locals 6
    .param p1, "preferencesUpdated"    # Z

    .prologue
    .line 323
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v2, "settings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;

    .line 325
    .local v0, "app":Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;
    invoke-virtual {v0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    .end local v0    # "app":Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;
    :cond_0
    const-string v4, "|"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "value":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 329
    iput-object v3, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    .line 331
    :cond_1
    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_light_pulse_custom_values"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 333
    return-void
.end method

.method private setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V
    .locals 5
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "started"    # Z

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 193
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 194
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 195
    .local v3, "pref":Landroid/preference/Preference;
    instance-of v4, v3, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 196
    check-cast v0, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    .line 197
    .local v0, "ap":Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;
    if-eqz p2, :cond_1

    .line 198
    invoke-virtual {v0}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;->onStart()V

    .line 193
    .end local v0    # "ap":Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    .restart local v0    # "ap":Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;
    .restart local v3    # "pref":Landroid/preference/Preference;
    :cond_1
    invoke-virtual {v0}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;->onStop()V

    goto :goto_1

    .line 202
    .end local v0    # "ap":Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;
    :cond_2
    instance-of v4, v3, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 203
    check-cast v3, Landroid/preference/PreferenceGroup;

    .end local v3    # "pref":Landroid/preference/Preference;
    invoke-direct {p0, v3, p2}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    goto :goto_1

    .line 206
    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lorg/flerovium/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v4, 0x7f06002e

    invoke-virtual {p0, v4}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->addPreferencesFromResource(I)V

    .line 98
    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 99
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 101
    .local v2, "resources":Landroid/content/res/Resources;
    const-string v4, "advanced_section"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 104
    .local v0, "mAdvancedPrefs":Landroid/preference/PreferenceGroup;
    const v4, 0x106010f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    .line 107
    const v4, 0x10e0048

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    .line 109
    const v4, 0x10e0049

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    .line 112
    const-string v4, "notification_light_pulse"

    invoke-virtual {p0, v4}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    iput-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mEnabledPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    .line 114
    iget-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mEnabledPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v4, p0}, Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    const-string v4, "default"

    invoke-virtual {p0, v4}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    iput-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    .line 117
    iget-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v4, p0}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    const-string v4, "notification_light_brightness_level"

    invoke-virtual {p0, v4}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    .line 122
    const-string v4, "notification_light_multiple_leds_enable"

    invoke-virtual {p0, v4}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    iput-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    .line 124
    const-string v4, "notification_light_screen_on_enable"

    invoke-virtual {p0, v4}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    iput-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    .line 126
    iget-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v4, p0}, Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    const-string v4, "notification_light_pulse_custom_enable"

    invoke-virtual {p0, v4}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    iput-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    .line 129
    iget-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v4, p0}, Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    const v4, 0x112003f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    iget-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    :goto_0
    const v4, 0x1120044

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 138
    iget-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    :goto_1
    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 145
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-nez v4, :cond_3

    .line 146
    const-string v4, "phone_list"

    invoke-virtual {p0, v4}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->removePreference(Ljava/lang/String;)V

    .line 155
    :goto_2
    const-string v4, "applications_list"

    invoke-virtual {p0, v4}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    .line 156
    iget-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 159
    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 160
    new-instance v4, Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;

    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackageAdapter:Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;

    .line 162
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    .line 163
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->setHasOptionsMenu(Z)V

    .line 165
    const v4, 0x1120041

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 166
    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->resetColors()V

    .line 168
    :cond_0
    return-void

    .line 134
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    iget-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v4, p0}, Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 148
    .restart local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    const-string v4, "missed_call"

    invoke-virtual {p0, v4}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    iput-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mCallPref:Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    .line 149
    iget-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mCallPref:Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v4, p0}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    const-string v4, "voicemail"

    invoke-virtual {p0, v4}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    iput-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    .line 152
    iget-object v4, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v4, p0}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 454
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 456
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 476
    const/4 v1, 0x0

    .line 478
    .local v1, "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 458
    .end local v1    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 459
    .local v2, "list":Landroid/widget/ListView;
    iget-object v3, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackageAdapter:Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 461
    const v3, 0x7f09003e

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 462
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 463
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 465
    .restart local v1    # "dialog":Landroid/app/Dialog;
    new-instance v3, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$2;

    invoke-direct {v3, p0, v1}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$2;-><init>(Lorg/flerovium/settings/notificationlight/NotificationLightSettings;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 427
    iput-object p1, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    .line 428
    iget-object v0, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    const v1, 0x7f090011

    invoke-interface {v0, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 431
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 390
    .local v1, "pref":Landroid/preference/Preference;
    iget-object v2, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 391
    const/4 v2, 0x0

    .line 407
    :goto_0
    return v2

    .line 394
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f09012b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09012c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$1;

    invoke-direct {v4, p0, v1}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$1;-><init>(Lorg/flerovium/settings/notificationlight/NotificationLightSettings;Landroid/preference/Preference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 406
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 407
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    .line 441
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 446
    :goto_0
    return v0

    .line 443
    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->showDialog(I)V

    .line 444
    const/4 v0, 0x1

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 411
    iget-object v1, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mEnabledPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    if-ne p1, v1, :cond_1

    .line 415
    :cond_0
    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 422
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    move-object v0, p1

    .line 417
    check-cast v0, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;

    .line 418
    .local v0, "lightPref":Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;
    invoke-virtual {v0}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;->getOnValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lorg/flerovium/settings/notificationlight/ApplicationLightPreference;->getOffValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 435
    iget-object v2, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mEnabledPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v2}, Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v2}, Lorg/flerovium/settings/cyanogenmod/SystemSettingSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 436
    .local v0, "enableAddButton":Z
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 437
    return-void

    .end local v0    # "enableAddButton":Z
    :cond_0
    move v0, v1

    .line 435
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lorg/flerovium/settings/SettingsPreferenceFragment;->onResume()V

    .line 173
    invoke-direct {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 174
    invoke-direct {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 175
    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 176
    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 177
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lorg/flerovium/settings/SettingsPreferenceFragment;->onStart()V

    .line 182
    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    .line 183
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Lorg/flerovium/settings/SettingsPreferenceFragment;->onStop()V

    .line 188
    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    .line 189
    return-void
.end method

.method protected resetColors()V
    .locals 3

    .prologue
    .line 377
    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 380
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "notification_light_pulse_default_color"

    iget v2, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 381
    const-string v1, "notification_light_pulse_call_color"

    iget v2, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 382
    const-string v1, "notification_light_pulse_vmail_color"

    iget v2, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 384
    invoke-direct {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 385
    return-void
.end method

.method protected updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/Integer;
    .param p3, "timeon"    # Ljava/lang/Integer;
    .param p4, "timeoff"    # Ljava/lang/Integer;

    .prologue
    .line 344
    invoke-virtual {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 346
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    const-string v2, "notification_light_pulse_default_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 348
    const-string v2, "notification_light_pulse_default_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 349
    const-string v2, "notification_light_pulse_default_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 350
    invoke-direct {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    const-string v2, "missed_call"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 353
    const-string v2, "notification_light_pulse_call_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    const-string v2, "notification_light_pulse_call_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 355
    const-string v2, "notification_light_pulse_call_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    invoke-direct {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    goto :goto_0

    .line 358
    :cond_2
    const-string v2, "voicemail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 359
    const-string v2, "notification_light_pulse_vmail_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    const-string v2, "notification_light_pulse_vmail_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    const-string v2, "notification_light_pulse_vmail_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    invoke-direct {p0}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    goto :goto_0

    .line 367
    :cond_3
    iget-object v2, p0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;

    .line 368
    .local v0, "app":Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;
    if-eqz v0, :cond_0

    .line 369
    iput-object p2, v0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    .line 370
    iput-object p3, v0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    .line 371
    iput-object p4, v0, Lorg/flerovium/settings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    .line 372
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/flerovium/settings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    goto :goto_0
.end method
