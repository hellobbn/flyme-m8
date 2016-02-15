.class Lorg/flerovium/settings/wifi/AdvancedWifiSettings$3;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/wifi/AdvancedWifiSettings;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/wifi/AdvancedWifiSettings;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lorg/flerovium/settings/wifi/AdvancedWifiSettings$3;->this$0:Lorg/flerovium/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 192
    iget-object v0, p0, Lorg/flerovium/settings/wifi/AdvancedWifiSettings$3;->this$0:Lorg/flerovium/settings/wifi/AdvancedWifiSettings;

    const/4 v1, 0x2

    # invokes: Lorg/flerovium/settings/wifi/AdvancedWifiSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lorg/flerovium/settings/wifi/AdvancedWifiSettings;->access$200(Lorg/flerovium/settings/wifi/AdvancedWifiSettings;I)V

    .line 193
    const/4 v0, 0x1

    return v0
.end method
