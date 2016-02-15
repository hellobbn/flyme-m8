.class public Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lorg/flerovium/settings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    }
.end annotation


# instance fields
.field private mChooseLockSettingsHelper:Lorg/flerovium/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEncryptionRequestDisabled:Z

.field private mEncryptionRequestQuality:I

.field private mEncryptionRequestSubQuality:I

.field private mFinishPending:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordConfirmed:Z

.field private mRequirePassword:Z

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lorg/flerovium/settings/SettingsPreferenceFragment;-><init>()V

    .line 105
    iput-boolean v0, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 106
    iput-boolean v0, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 107
    iput-boolean v0, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 629
    return-void
.end method

.method static synthetic access$000(Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private allowedForFallback(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 425
    const-string v0, "unlock_backup_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_password"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBiometricSensorIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 432
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lorg/flerovium/settings/ChooseLockGeneric$InternalActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 434
    .local v0, "fallBackIntent":Landroid/content/Intent;
    const-string v4, "lockscreen.biometric_weak_fallback"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 435
    const-string v4, "confirm_credentials"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 436
    const-string v4, ":settings:show_fragment_title"

    const v5, 0x7f090531

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    const/4 v3, 0x1

    .line 441
    .local v3, "showTutorial":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 442
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.android.facelock"

    const-string v5, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v4, "showTutorial"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 445
    .local v2, "pending":Landroid/app/PendingIntent;
    const-string v4, "PendingIntent"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 446
    return-object v1
.end method

.method private getFingerprintIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isFallback"    # Z
    .param p3, "requirePassword"    # Z
    .param p4, "confirmCredentials"    # Z

    .prologue
    .line 453
    invoke-static {p1, p2, p3, p4}, Lorg/flerovium/settings/ManageFingerprints;->createIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getResIdForFactoryResetProtectionWarningTitle()I
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 582
    const v0, 0x7f09054f

    :goto_0
    return v0

    .line 573
    :sswitch_0
    const v0, 0x7f09054c

    goto :goto_0

    .line 576
    :sswitch_1
    const v0, 0x7f09054d

    goto :goto_0

    .line 580
    :sswitch_2
    const v0, 0x7f09054e

    goto :goto_0

    .line 571
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isUnlockMethodSecure(Ljava/lang/String;)Z
    .locals 1
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    .line 587
    const-string v0, "unlock_set_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeEnableEncryption(IZ)V
    .locals 1
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 187
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZI)V

    .line 188
    return-void
.end method

.method private maybeEnableEncryption(IZI)V
    .locals 6
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z
    .param p3, "subQuality"    # I

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->isOwner()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 200
    iput p1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 201
    iput p3, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestSubQuality:I

    .line 202
    iput-boolean p2, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 203
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 207
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 208
    .local v0, "accEn":Z
    iget-object v5, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v3

    .line 209
    .local v3, "required":Z
    invoke-virtual {p0, v1, p1, v3}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v2

    .line 210
    .local v2, "intent":Landroid/content/Intent;
    const/16 v4, 0x66

    invoke-virtual {p0, v2, v4}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 215
    .end local v0    # "accEn":Z
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "required":Z
    :goto_0
    return-void

    .line 212
    :cond_1
    iput-boolean v4, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 213
    invoke-virtual {p0, p1, p2, p3}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZI)V

    goto :goto_0
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .locals 4
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    const v3, 0x8000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 592
    const v2, 0x16058

    invoke-static {v2, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 594
    const-string v2, "unlock_set_off"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    invoke-virtual {p0, v0, v1}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    :goto_0
    move v0, v1

    .line 619
    :goto_1
    return v0

    .line 597
    :cond_0
    const-string v2, "unlock_set_none"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 598
    invoke-virtual {p0, v0, v0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 600
    :cond_1
    const-string v2, "unlock_set_biometric_weak"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 601
    invoke-direct {p0, v3, v0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 603
    :cond_2
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 604
    const/high16 v2, 0x10000

    invoke-direct {p0, v2, v0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 606
    :cond_3
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 607
    const/high16 v2, 0x20000

    invoke-direct {p0, v2, v0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 609
    :cond_4
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 610
    const/high16 v2, 0x40000

    invoke-direct {p0, v2, v0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 612
    :cond_5
    const-string v2, "unlock_set_fingerprint"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 613
    invoke-virtual {p0, v3, v0, v1}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZI)V

    goto :goto_0

    .line 616
    :cond_6
    const-string v1, "ChooseLockGenericFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unknown unlock method to set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "unlockMethodToSet"    # Ljava/lang/String;

    .prologue
    .line 623
    invoke-direct {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v1

    .line 624
    .local v1, "title":I
    invoke-static {v1, p1}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(ILjava/lang/String;)Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    .line 626
    .local v0, "dialog":Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "frp_warning_dialog"

    invoke-virtual {v0, v2, v3}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .locals 8

    .prologue
    const/4 v6, -0x1

    .line 392
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 415
    :cond_0
    return-void

    .line 396
    :cond_1
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 401
    const v5, 0x7f0909af

    invoke-virtual {p0, v5}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 404
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 405
    .local v2, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 406
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 407
    .local v1, "preference":Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    move v5, v6

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 405
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :sswitch_0
    const-string v7, "unlock_set_pattern"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v7, "unlock_set_pin"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v7, "unlock_set_password"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    .line 411
    :pswitch_0
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 407
    :sswitch_data_0
    .sparse-switch
        -0x75461c3 -> :sswitch_1
        0x27e176f3 -> :sswitch_2
        0x53ec4438 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePreferencesOrFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 273
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 274
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "lockscreen.password_type"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 275
    .local v3, "quality":I
    if-ne v3, v5, :cond_1

    .line 277
    const-string v4, "minimum_quality"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 278
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v6}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 279
    .local v0, "allowBiometric":Landroid/util/MutableBoolean;
    invoke-direct {p0, v3, v0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILandroid/util/MutableBoolean;)I

    move-result v3

    .line 280
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 281
    .local v2, "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 284
    :cond_0
    const v4, 0x7f060048

    invoke-virtual {p0, v4}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 285
    invoke-virtual {p0, v3, v0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(ILandroid/util/MutableBoolean;)V

    .line 286
    invoke-direct {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    .line 290
    .end local v0    # "allowBiometric":Landroid/util/MutableBoolean;
    .end local v2    # "prefScreen":Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-virtual {p0, v3, v6}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private upgradeQuality(ILandroid/util/MutableBoolean;)I
    .locals 0
    .param p1, "quality"    # I
    .param p2, "allowBiometric"    # Landroid/util/MutableBoolean;

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 295
    invoke-direct {p0, p1}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForKeyStore(I)I

    move-result p1

    .line 296
    return p1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 3
    .param p1, "quality"    # I

    .prologue
    .line 301
    iget-object v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 302
    .local v0, "minQuality":I
    if-ge p1, v0, :cond_0

    .line 303
    move p1, v0

    .line 305
    :cond_0
    return p1
.end method

.method private upgradeQualityForKeyStore(I)I
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_0

    .line 311
    const/high16 p1, 0x10000

    .line 314
    :cond_0
    return p1
.end method


# virtual methods
.method protected disableUnusablePreferences(ILandroid/util/MutableBoolean;)V
    .locals 1
    .param p1, "quality"    # I
    .param p2, "allowBiometric"    # Landroid/util/MutableBoolean;

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(ILandroid/util/MutableBoolean;Z)V

    .line 327
    return-void
.end method

.method protected disableUnusablePreferencesImpl(ILandroid/util/MutableBoolean;Z)V
    .locals 16
    .param p1, "quality"    # I
    .param p2, "allowBiometric"    # Landroid/util/MutableBoolean;
    .param p3, "hideDisabled"    # Z

    .prologue
    .line 338
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 339
    .local v2, "entries":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 340
    .local v5, "intent":Landroid/content/Intent;
    const-string v14, "lockscreen.biometric_weak_fallback"

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 342
    .local v8, "onlyShowFallback":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lorg/flerovium/settings/ChooseLockSettingsHelper;

    invoke-virtual {v14}, Lorg/flerovium/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v13

    .line 344
    .local v13, "weakBiometricAvailable":Z
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/UserHandle;->isOwner()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lorg/flerovium/settings/ChooseLockSettingsHelper;

    invoke-virtual {v14}, Lorg/flerovium/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintInstalled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v3, 0x1

    .line 348
    .local v3, "fingerprintAvailable":Z
    :goto_0
    const-string v14, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 349
    .local v7, "mUm":Landroid/os/UserManager;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v11

    .line 350
    .local v11, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    const/4 v10, 0x1

    .line 352
    .local v10, "singleUser":Z
    :goto_1
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_17

    .line 353
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    .line 354
    .local v9, "pref":Landroid/preference/Preference;
    instance-of v14, v9, Landroid/preference/PreferenceScreen;

    if-eqz v14, :cond_3

    move-object v14, v9

    .line 355
    check-cast v14, Landroid/preference/PreferenceScreen;

    invoke-virtual {v14}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, "key":Ljava/lang/String;
    const/4 v1, 0x1

    .line 357
    .local v1, "enabled":Z
    const/4 v12, 0x1

    .line 358
    .local v12, "visible":Z
    const-string v14, "unlock_set_off"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 359
    if-gtz p1, :cond_6

    const/4 v1, 0x1

    .line 360
    :goto_3
    move v12, v10

    .line 378
    :cond_0
    :goto_4
    if-eqz p3, :cond_1

    .line 379
    if-eqz v12, :cond_15

    if-eqz v1, :cond_15

    const/4 v12, 0x1

    .line 381
    :cond_1
    :goto_5
    if-eqz v12, :cond_2

    if-eqz v8, :cond_16

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->allowedForFallback(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_16

    .line 382
    :cond_2
    invoke-virtual {v2, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 352
    .end local v1    # "enabled":Z
    .end local v6    # "key":Ljava/lang/String;
    .end local v12    # "visible":Z
    :cond_3
    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 344
    .end local v3    # "fingerprintAvailable":Z
    .end local v4    # "i":I
    .end local v7    # "mUm":Landroid/os/UserManager;
    .end local v9    # "pref":Landroid/preference/Preference;
    .end local v10    # "singleUser":Z
    .end local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 350
    .restart local v3    # "fingerprintAvailable":Z
    .restart local v7    # "mUm":Landroid/os/UserManager;
    .restart local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 359
    .restart local v1    # "enabled":Z
    .restart local v4    # "i":I
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v9    # "pref":Landroid/preference/Preference;
    .restart local v10    # "singleUser":Z
    .restart local v12    # "visible":Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 361
    :cond_7
    const-string v14, "unlock_set_none"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 362
    if-gtz p1, :cond_8

    const/4 v1, 0x1

    :goto_7
    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    goto :goto_7

    .line 363
    :cond_9
    const-string v14, "unlock_set_biometric_weak"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 364
    const v14, 0x8000

    move/from16 v0, p1

    if-le v0, v14, :cond_a

    move-object/from16 v0, p2

    iget-boolean v14, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v14, :cond_b

    :cond_a
    const/4 v1, 0x1

    .line 366
    :goto_8
    move v12, v13

    goto :goto_4

    .line 364
    :cond_b
    const/4 v1, 0x0

    goto :goto_8

    .line 367
    :cond_c
    const-string v14, "unlock_set_pattern"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 368
    const/high16 v14, 0x10000

    move/from16 v0, p1

    if-gt v0, v14, :cond_d

    const/4 v1, 0x1

    :goto_9
    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    goto :goto_9

    .line 369
    :cond_e
    const-string v14, "unlock_set_pin"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 370
    const/high16 v14, 0x30000

    move/from16 v0, p1

    if-gt v0, v14, :cond_f

    const/4 v1, 0x1

    :goto_a
    goto :goto_4

    :cond_f
    const/4 v1, 0x0

    goto :goto_a

    .line 371
    :cond_10
    const-string v14, "unlock_set_password"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 372
    const/high16 v14, 0x60000

    move/from16 v0, p1

    if-gt v0, v14, :cond_11

    const/4 v1, 0x1

    :goto_b
    goto :goto_4

    :cond_11
    const/4 v1, 0x0

    goto :goto_b

    .line 373
    :cond_12
    const-string v14, "unlock_set_fingerprint"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 374
    const v14, 0x8000

    move/from16 v0, p1

    if-le v0, v14, :cond_13

    move-object/from16 v0, p2

    iget-boolean v14, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v14, :cond_14

    :cond_13
    const/4 v1, 0x1

    .line 376
    :goto_c
    move v12, v3

    goto/16 :goto_4

    .line 374
    :cond_14
    const/4 v1, 0x0

    goto :goto_c

    .line 379
    :cond_15
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 383
    :cond_16
    if-nez v1, :cond_3

    .line 384
    const v14, 0x7f090544

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setSummary(I)V

    .line 385
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 389
    .end local v1    # "enabled":Z
    .end local v6    # "key":Ljava/lang/String;
    .end local v9    # "pref":Landroid/preference/Preference;
    .end local v12    # "visible":Z
    :cond_17
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z

    .prologue
    .line 476
    invoke-static {p1, p2, p3}, Lorg/flerovium/settings/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 567
    const v0, 0x7f090c5f

    return v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IZZIIZZ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "isFingerprintFallback"    # Z
    .param p5, "minLength"    # I
    .param p6, "maxLength"    # I
    .param p7, "requirePasswordToDecrypt"    # Z
    .param p8, "confirmCredentials"    # Z

    .prologue
    .line 461
    invoke-static/range {p1 .. p8}, Lorg/flerovium/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IZZIIZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZZZZ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isFallback"    # Z
    .param p3, "isFingerprintFallback"    # Z
    .param p4, "requirePassword"    # Z
    .param p5, "confirmCredentials"    # Z

    .prologue
    .line 469
    invoke-static {p1, p2, p3, p4, p5}, Lorg/flerovium/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZZZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 239
    invoke-super {p0, p1, p2, p3}, Lorg/flerovium/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 240
    iput-boolean v2, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 241
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 242
    iput-boolean v3, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 243
    invoke-direct {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 258
    :goto_0
    return-void

    .line 244
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 245
    iget-object v0, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lorg/flerovium/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lorg/flerovium/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->deleteTempGallery()V

    .line 246
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 247
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 248
    :cond_1
    const/16 v0, 0x66

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 250
    const-string v0, "settings_require_password"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 252
    iget v0, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    iget-boolean v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    iget v2, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestSubQuality:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZI)V

    goto :goto_0

    .line 255
    :cond_2
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 256
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 116
    invoke-super {p0, p1}, Lorg/flerovium/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 119
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 120
    new-instance v2, Lorg/flerovium/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/flerovium/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lorg/flerovium/settings/ChooseLockSettingsHelper;

    .line 121
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 124
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "confirm_credentials"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 126
    .local v0, "confirmCredentials":Z
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lorg/flerovium/settings/ChooseLockGeneric$InternalActivity;

    if-eqz v2, :cond_0

    .line 127
    if-nez v0, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 130
    :cond_0
    if-eqz p1, :cond_1

    .line 131
    const-string v2, "password_confirmed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 132
    const-string v2, "waiting_for_confirmation"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 133
    const-string v2, "finish_pending"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 134
    const-string v2, "encrypt_requested_quality"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 135
    const-string v2, "encrypt_requested_subquality"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestSubQuality:I

    .line 137
    const-string v2, "encrypt_requested_disabled"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 141
    :cond_1
    iget-boolean v2, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v2, :cond_4

    .line 142
    invoke-direct {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 153
    :cond_2
    :goto_1
    return-void

    .line 127
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 143
    :cond_4
    iget-boolean v2, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v2, :cond_2

    .line 144
    new-instance v1, Lorg/flerovium/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/flerovium/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 146
    .local v1, "helper":Lorg/flerovium/settings/ChooseLockSettingsHelper;
    const/16 v2, 0x64

    invoke-virtual {v1, v2, v5, v5}, Lorg/flerovium/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 147
    iput-boolean v3, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 148
    invoke-direct {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_1

    .line 150
    :cond_5
    iput-boolean v3, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 220
    invoke-super {p0, p1, p2, p3}, Lorg/flerovium/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 221
    .local v3, "v":Landroid/view/View;
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 223
    .local v2, "onlyShowFallback":Z
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.fingerprint_fallback"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 225
    .local v1, "isFingerprintFallback":Z
    if-eqz v2, :cond_1

    .line 226
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f04010d

    invoke-static {v4, v5, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 228
    .local v0, "header":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 229
    const v4, 0x7f09038f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 231
    :cond_0
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4, v0, v7, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 234
    .end local v0    # "header":Landroid/widget/TextView;
    :cond_1
    return-object v3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-direct {p0, v0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V

    .line 173
    const/4 v1, 0x1

    .line 175
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lorg/flerovium/settings/SettingsPreferenceFragment;->onResume()V

    .line 158
    iget-boolean v0, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 160
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 162
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 262
    invoke-super {p0, p1}, Lorg/flerovium/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 264
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    const-string v0, "finish_pending"

    iget-boolean v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    const-string v0, "encrypt_requested_quality"

    iget v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    const-string v0, "encrypt_requested_subquality"

    iget v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestSubQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    const-string v0, "encrypt_requested_disabled"

    iget-boolean v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 270
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 1
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 489
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZI)V

    .line 490
    return-void
.end method

.method updateUnlockMethodAndFinish(IZI)V
    .locals 15
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z
    .param p3, "subQuality"    # I

    .prologue
    .line 505
    iget-boolean v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v1, :cond_0

    .line 506
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Tried to update password without confirming it"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 509
    :cond_0
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "lockscreen.biometric_weak_fallback"

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 512
    .local v4, "isFallback":Z
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "lockscreen.fingerprint_fallback"

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 515
    .local v5, "isFingerprintFallback":Z
    const/4 v1, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILandroid/util/MutableBoolean;)I

    move-result p1

    .line 517
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 518
    .local v2, "context":Landroid/content/Context;
    const/high16 v1, 0x20000

    move/from16 v0, p1

    if-lt v0, v1, :cond_3

    .line 519
    iget-object v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v6

    .line 520
    .local v6, "minLength":I
    const/4 v1, 0x4

    if-ge v6, v1, :cond_1

    .line 521
    const/4 v6, 0x4

    .line 523
    :cond_1
    iget-object v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v7

    .line 524
    .local v7, "maxLength":I
    iget-boolean v8, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    const/4 v9, 0x0

    move-object v1, p0

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v9}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IZZIIZZ)Landroid/content/Intent;

    move-result-object v14

    .line 527
    .local v14, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_2

    .line 528
    const/16 v1, 0x65

    invoke-virtual {p0, v14, v1}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 563
    .end local v6    # "minLength":I
    .end local v7    # "maxLength":I
    .end local v14    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 531
    .restart local v6    # "minLength":I
    .restart local v7    # "maxLength":I
    .restart local v14    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 532
    const/high16 v1, 0x2000000

    invoke-virtual {v14, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 533
    invoke-virtual {p0, v14}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 535
    .end local v6    # "minLength":I
    .end local v7    # "maxLength":I
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_3
    const/high16 v1, 0x10000

    move/from16 v0, p1

    if-ne v0, v1, :cond_5

    .line 536
    iget-boolean v12, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    const/4 v13, 0x0

    move-object v8, p0

    move-object v9, v2

    move v10, v4

    move v11, v5

    invoke-virtual/range {v8 .. v13}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZZZZ)Landroid/content/Intent;

    move-result-object v14

    .line 538
    .restart local v14    # "intent":Landroid/content/Intent;
    if-eqz v4, :cond_4

    .line 539
    const/16 v1, 0x65

    invoke-virtual {p0, v14, v1}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 542
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 543
    const/high16 v1, 0x2000000

    invoke-virtual {v14, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0, v14}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 546
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_5
    const v1, 0x8000

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_6

    .line 548
    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v2, v1, v3, v8}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getFingerprintIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object v14

    .line 549
    .restart local v14    # "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 550
    invoke-virtual {p0, v14}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 551
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_6
    const v1, 0x8000

    move/from16 v0, p1

    if-ne v0, v1, :cond_7

    .line 552
    invoke-direct {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getBiometricSensorIntent()Landroid/content/Intent;

    move-result-object v14

    .line 553
    .restart local v14    # "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 554
    invoke-virtual {p0, v14}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 555
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_7
    if-nez p1, :cond_8

    .line 556
    iget-object v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lorg/flerovium/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lorg/flerovium/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 557
    iget-object v1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lorg/flerovium/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lorg/flerovium/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 558
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 559
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 561
    :cond_8
    invoke-virtual {p0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_0
.end method
