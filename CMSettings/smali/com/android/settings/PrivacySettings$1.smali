.class Lorg/flerovium/settings/PrivacySettings$1;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/PrivacySettings;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lorg/flerovium/settings/PrivacySettings$1;->this$0:Lorg/flerovium/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 146
    instance-of v4, p1, Landroid/preference/SwitchPreference;

    if-nez v4, :cond_0

    .line 168
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v3

    .line 149
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 150
    .local v1, "nextValue":Z
    const/4 v2, 0x0

    .line 151
    .local v2, "result":Z
    iget-object v4, p0, Lorg/flerovium/settings/PrivacySettings$1;->this$0:Lorg/flerovium/settings/PrivacySettings;

    # getter for: Lorg/flerovium/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lorg/flerovium/settings/PrivacySettings;->access$000(Lorg/flerovium/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-ne p1, v4, :cond_3

    .line 152
    if-nez v1, :cond_2

    .line 155
    iget-object v3, p0, Lorg/flerovium/settings/PrivacySettings$1;->this$0:Lorg/flerovium/settings/PrivacySettings;

    # invokes: Lorg/flerovium/settings/PrivacySettings;->showEraseBackupDialog()V
    invoke-static {v3}, Lorg/flerovium/settings/PrivacySettings;->access$100(Lorg/flerovium/settings/PrivacySettings;)V

    :cond_1
    :goto_1
    move v3, v2

    .line 168
    goto :goto_0

    .line 157
    :cond_2
    iget-object v4, p0, Lorg/flerovium/settings/PrivacySettings$1;->this$0:Lorg/flerovium/settings/PrivacySettings;

    # invokes: Lorg/flerovium/settings/PrivacySettings;->setBackupEnabled(Z)V
    invoke-static {v4, v3}, Lorg/flerovium/settings/PrivacySettings;->access$200(Lorg/flerovium/settings/PrivacySettings;Z)V

    .line 158
    const/4 v2, 0x1

    goto :goto_1

    .line 160
    :cond_3
    iget-object v4, p0, Lorg/flerovium/settings/PrivacySettings$1;->this$0:Lorg/flerovium/settings/PrivacySettings;

    # getter for: Lorg/flerovium/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lorg/flerovium/settings/PrivacySettings;->access$300(Lorg/flerovium/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-ne p1, v4, :cond_1

    .line 162
    :try_start_0
    iget-object v4, p0, Lorg/flerovium/settings/PrivacySettings$1;->this$0:Lorg/flerovium/settings/PrivacySettings;

    # getter for: Lorg/flerovium/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;
    invoke-static {v4}, Lorg/flerovium/settings/PrivacySettings;->access$400(Lorg/flerovium/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    const/4 v2, 0x1

    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lorg/flerovium/settings/PrivacySettings$1;->this$0:Lorg/flerovium/settings/PrivacySettings;

    # getter for: Lorg/flerovium/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lorg/flerovium/settings/PrivacySettings;->access$300(Lorg/flerovium/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-nez v1, :cond_4

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method