.class public Lorg/flerovium/settings/SetupManageFingerprints$SetupManageFingerprintsFragment;
.super Lorg/flerovium/settings/ManageFingerprints$FingerprintListFragment;
.source "SetupManageFingerprints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/SetupManageFingerprints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupManageFingerprintsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/flerovium/settings/ManageFingerprints$FingerprintListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEnrollmentIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/flerovium/settings/SetupManageFingerprints$SetupManageFingerprintsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/flerovium/settings/SetupEnrollFingerprint;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lockscreen.fingerprint_fallback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0}, Lorg/flerovium/settings/SetupManageFingerprints$SetupManageFingerprintsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/flerovium/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 94
    return-object v0
.end method

.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f0400ee

    return v0
.end method
