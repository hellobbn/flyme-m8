.class Lorg/flerovium/settings/wifi/WifiSettingsForSetupWizardXL$1;
.super Ljava/lang/Object;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/wifi/WifiSettingsForSetupWizardXL;->onBackButtonPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/wifi/WifiSettingsForSetupWizardXL;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/wifi/WifiSettingsForSetupWizardXL;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lorg/flerovium/settings/wifi/WifiSettingsForSetupWizardXL$1;->this$0:Lorg/flerovium/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 601
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 598
    return-void
.end method
