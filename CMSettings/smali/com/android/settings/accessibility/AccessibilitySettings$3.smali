.class Lorg/flerovium/settings/accessibility/AccessibilitySettings$3;
.super Lorg/flerovium/settings/accessibility/SettingsContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 161
    iput-object p1, p0, Lorg/flerovium/settings/accessibility/AccessibilitySettings$3;->this$0:Lorg/flerovium/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2}, Lorg/flerovium/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 164
    iget-object v0, p0, Lorg/flerovium/settings/accessibility/AccessibilitySettings$3;->this$0:Lorg/flerovium/settings/accessibility/AccessibilitySettings;

    # invokes: Lorg/flerovium/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lorg/flerovium/settings/accessibility/AccessibilitySettings;->access$000(Lorg/flerovium/settings/accessibility/AccessibilitySettings;)V

    .line 165
    iget-object v0, p0, Lorg/flerovium/settings/accessibility/AccessibilitySettings$3;->this$0:Lorg/flerovium/settings/accessibility/AccessibilitySettings;

    # invokes: Lorg/flerovium/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lorg/flerovium/settings/accessibility/AccessibilitySettings;->access$100(Lorg/flerovium/settings/accessibility/AccessibilitySettings;)V

    .line 166
    return-void
.end method
