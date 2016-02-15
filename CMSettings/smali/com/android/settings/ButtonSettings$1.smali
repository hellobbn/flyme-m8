.class Lorg/flerovium/settings/ButtonSettings$1;
.super Ljava/lang/Object;
.source "ButtonSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/ButtonSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/ButtonSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/ButtonSettings;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lorg/flerovium/settings/ButtonSettings$1;->this$0:Lorg/flerovium/settings/ButtonSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lorg/flerovium/settings/ButtonSettings$1;->this$0:Lorg/flerovium/settings/ButtonSettings;

    # getter for: Lorg/flerovium/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lorg/flerovium/settings/ButtonSettings;->access$000(Lorg/flerovium/settings/ButtonSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 736
    iget-object v0, p0, Lorg/flerovium/settings/ButtonSettings$1;->this$0:Lorg/flerovium/settings/ButtonSettings;

    # getter for: Lorg/flerovium/settings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;
    invoke-static {v0}, Lorg/flerovium/settings/ButtonSettings;->access$100(Lorg/flerovium/settings/ButtonSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lorg/flerovium/settings/ButtonSettings$1;->this$0:Lorg/flerovium/settings/ButtonSettings;

    # getter for: Lorg/flerovium/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lorg/flerovium/settings/ButtonSettings;->access$000(Lorg/flerovium/settings/ButtonSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 737
    iget-object v0, p0, Lorg/flerovium/settings/ButtonSettings$1;->this$0:Lorg/flerovium/settings/ButtonSettings;

    iget-object v1, p0, Lorg/flerovium/settings/ButtonSettings$1;->this$0:Lorg/flerovium/settings/ButtonSettings;

    # getter for: Lorg/flerovium/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lorg/flerovium/settings/ButtonSettings;->access$000(Lorg/flerovium/settings/ButtonSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    # invokes: Lorg/flerovium/settings/ButtonSettings;->updateDisableNavkeysCategories(Z)V
    invoke-static {v0, v1}, Lorg/flerovium/settings/ButtonSettings;->access$200(Lorg/flerovium/settings/ButtonSettings;Z)V

    .line 738
    return-void
.end method
