.class Lorg/flerovium/settings/print/PrintServiceSettingsFragment$3;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Lorg/flerovium/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/print/PrintServiceSettingsFragment;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lorg/flerovium/settings/print/PrintServiceSettingsFragment$3;->this$0:Lorg/flerovium/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lorg/flerovium/settings/widget/ToggleSwitch;Z)Z
    .locals 4
    .param p1, "toggleSwitch"    # Lorg/flerovium/settings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 305
    if-eqz p2, :cond_1

    .line 306
    iget-object v2, p0, Lorg/flerovium/settings/print/PrintServiceSettingsFragment$3;->this$0:Lorg/flerovium/settings/print/PrintServiceSettingsFragment;

    # getter for: Lorg/flerovium/settings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;
    invoke-static {v2}, Lorg/flerovium/settings/print/PrintServiceSettingsFragment;->access$500(Lorg/flerovium/settings/print/PrintServiceSettingsFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    iget-object v2, p0, Lorg/flerovium/settings/print/PrintServiceSettingsFragment$3;->this$0:Lorg/flerovium/settings/print/PrintServiceSettingsFragment;

    # getter for: Lorg/flerovium/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lorg/flerovium/settings/widget/SwitchBar;
    invoke-static {v2}, Lorg/flerovium/settings/print/PrintServiceSettingsFragment;->access$600(Lorg/flerovium/settings/print/PrintServiceSettingsFragment;)Lorg/flerovium/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/flerovium/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 308
    iget-object v2, p0, Lorg/flerovium/settings/print/PrintServiceSettingsFragment$3;->this$0:Lorg/flerovium/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v2}, Lorg/flerovium/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_CHECKED"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 309
    iget-object v1, p0, Lorg/flerovium/settings/print/PrintServiceSettingsFragment$3;->this$0:Lorg/flerovium/settings/print/PrintServiceSettingsFragment;

    # invokes: Lorg/flerovium/settings/print/PrintServiceSettingsFragment;->showDialog(I)V
    invoke-static {v1, v0}, Lorg/flerovium/settings/print/PrintServiceSettingsFragment;->access$700(Lorg/flerovium/settings/print/PrintServiceSettingsFragment;I)V

    .line 316
    :goto_0
    return v0

    .line 312
    :cond_0
    iget-object v2, p0, Lorg/flerovium/settings/print/PrintServiceSettingsFragment$3;->this$0:Lorg/flerovium/settings/print/PrintServiceSettingsFragment;

    iget-object v3, p0, Lorg/flerovium/settings/print/PrintServiceSettingsFragment$3;->this$0:Lorg/flerovium/settings/print/PrintServiceSettingsFragment;

    # getter for: Lorg/flerovium/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v3}, Lorg/flerovium/settings/print/PrintServiceSettingsFragment;->access$800(Lorg/flerovium/settings/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/flerovium/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v0}, Lorg/flerovium/settings/print/PrintServiceSettingsFragment;->access$900(Lorg/flerovium/settings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    :goto_1
    move v0, v1

    .line 316
    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p0, Lorg/flerovium/settings/print/PrintServiceSettingsFragment$3;->this$0:Lorg/flerovium/settings/print/PrintServiceSettingsFragment;

    iget-object v2, p0, Lorg/flerovium/settings/print/PrintServiceSettingsFragment$3;->this$0:Lorg/flerovium/settings/print/PrintServiceSettingsFragment;

    # getter for: Lorg/flerovium/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v2}, Lorg/flerovium/settings/print/PrintServiceSettingsFragment;->access$800(Lorg/flerovium/settings/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/flerovium/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v1}, Lorg/flerovium/settings/print/PrintServiceSettingsFragment;->access$900(Lorg/flerovium/settings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    goto :goto_1
.end method