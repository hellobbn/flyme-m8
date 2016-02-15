.class Lorg/flerovium/settings/SettingsPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/SettingsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lorg/flerovium/settings/SettingsPreferenceFragment$2;->this$0:Lorg/flerovium/settings/SettingsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lorg/flerovium/settings/SettingsPreferenceFragment$2;->this$0:Lorg/flerovium/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lorg/flerovium/settings/SettingsPreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/flerovium/settings/SettingsPreferenceFragment$2;->this$0:Lorg/flerovium/settings/SettingsPreferenceFragment;

    # getter for: Lorg/flerovium/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z
    invoke-static {v0}, Lorg/flerovium/settings/SettingsPreferenceFragment;->access$000(Lorg/flerovium/settings/SettingsPreferenceFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/flerovium/settings/SettingsPreferenceFragment$2;->this$0:Lorg/flerovium/settings/SettingsPreferenceFragment;

    # getter for: Lorg/flerovium/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v0}, Lorg/flerovium/settings/SettingsPreferenceFragment;->access$100(Lorg/flerovium/settings/SettingsPreferenceFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lorg/flerovium/settings/SettingsPreferenceFragment$2;->this$0:Lorg/flerovium/settings/SettingsPreferenceFragment;

    iget-object v1, p0, Lorg/flerovium/settings/SettingsPreferenceFragment$2;->this$0:Lorg/flerovium/settings/SettingsPreferenceFragment;

    # getter for: Lorg/flerovium/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v1}, Lorg/flerovium/settings/SettingsPreferenceFragment;->access$100(Lorg/flerovium/settings/SettingsPreferenceFragment;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/flerovium/settings/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/flerovium/settings/SettingsPreferenceFragment;->access$200(Lorg/flerovium/settings/SettingsPreferenceFragment;Ljava/lang/String;)V

    .line 356
    :cond_0
    return-void
.end method
