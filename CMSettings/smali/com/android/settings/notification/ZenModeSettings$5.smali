.class Lorg/flerovium/settings/notification/ZenModeSettings$5;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/notification/ZenModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lorg/flerovium/settings/notification/ZenModeSettings$5;->this$0:Lorg/flerovium/settings/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 208
    iget-object v3, p0, Lorg/flerovium/settings/notification/ZenModeSettings$5;->this$0:Lorg/flerovium/settings/notification/ZenModeSettings;

    # getter for: Lorg/flerovium/settings/notification/ZenModeSettings;->mDisableListeners:Z
    invoke-static {v3}, Lorg/flerovium/settings/notification/ZenModeSettings;->access$000(Lorg/flerovium/settings/notification/ZenModeSettings;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 209
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 210
    .local v1, "val":Z
    iget-object v3, p0, Lorg/flerovium/settings/notification/ZenModeSettings$5;->this$0:Lorg/flerovium/settings/notification/ZenModeSettings;

    # getter for: Lorg/flerovium/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v3}, Lorg/flerovium/settings/notification/ZenModeSettings;->access$100(Lorg/flerovium/settings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eq v1, v3, :cond_0

    .line 211
    # getter for: Lorg/flerovium/settings/notification/ZenModeSettings;->DEBUG:Z
    invoke-static {}, Lorg/flerovium/settings/notification/ZenModeSettings;->access$200()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange allowMessages="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_2
    iget-object v2, p0, Lorg/flerovium/settings/notification/ZenModeSettings$5;->this$0:Lorg/flerovium/settings/notification/ZenModeSettings;

    # getter for: Lorg/flerovium/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v2}, Lorg/flerovium/settings/notification/ZenModeSettings;->access$100(Lorg/flerovium/settings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 213
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 214
    iget-object v2, p0, Lorg/flerovium/settings/notification/ZenModeSettings$5;->this$0:Lorg/flerovium/settings/notification/ZenModeSettings;

    # invokes: Lorg/flerovium/settings/notification/ZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    invoke-static {v2, v0}, Lorg/flerovium/settings/notification/ZenModeSettings;->access$300(Lorg/flerovium/settings/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    goto :goto_0
.end method
