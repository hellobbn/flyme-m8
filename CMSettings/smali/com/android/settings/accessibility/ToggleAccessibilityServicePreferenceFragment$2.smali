.class Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;
.super Ljava/lang/Object;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Lorg/flerovium/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lorg/flerovium/settings/widget/ToggleSwitch;Z)Z
    .locals 4
    .param p1, "toggleSwitch"    # Lorg/flerovium/settings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 364
    if-eqz p2, :cond_0

    .line 365
    iget-object v0, p0, Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object v0, v0, Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lorg/flerovium/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lorg/flerovium/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 366
    iget-object v0, p0, Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 367
    iget-object v0, p0, Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    # invokes: Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V
    invoke-static {v0, v2}, Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->access$100(Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    .line 373
    :goto_0
    return v2

    .line 369
    :cond_0
    iget-object v0, p0, Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object v0, v0, Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lorg/flerovium/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lorg/flerovium/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 370
    iget-object v0, p0, Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 371
    iget-object v0, p0, Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    const/4 v1, 0x2

    # invokes: Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->access$200(Lorg/flerovium/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    goto :goto_0
.end method
