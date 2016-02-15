.class Lorg/flerovium/settings/SettingsActivity$6;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/SettingsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Lorg/flerovium/settings/SettingsActivity$6;->this$0:Lorg/flerovium/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 797
    iget-object v0, p0, Lorg/flerovium/settings/SettingsActivity$6;->this$0:Lorg/flerovium/settings/SettingsActivity;

    const/4 v1, 0x1

    # invokes: Lorg/flerovium/settings/SettingsActivity;->invalidateCategories(Z)V
    invoke-static {v0, v1}, Lorg/flerovium/settings/SettingsActivity;->access$100(Lorg/flerovium/settings/SettingsActivity;Z)V

    .line 798
    return-void
.end method
