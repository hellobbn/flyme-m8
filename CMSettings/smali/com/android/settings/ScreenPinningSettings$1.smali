.class Lorg/flerovium/settings/ScreenPinningSettings$1;
.super Ljava/lang/Object;
.source "ScreenPinningSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/ScreenPinningSettings;->updateDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/ScreenPinningSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/ScreenPinningSettings;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lorg/flerovium/settings/ScreenPinningSettings$1;->this$0:Lorg/flerovium/settings/ScreenPinningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 168
    iget-object v0, p0, Lorg/flerovium/settings/ScreenPinningSettings$1;->this$0:Lorg/flerovium/settings/ScreenPinningSettings;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # invokes: Lorg/flerovium/settings/ScreenPinningSettings;->setScreenLockUsed(Z)Z
    invoke-static {v0, v1}, Lorg/flerovium/settings/ScreenPinningSettings;->access$000(Lorg/flerovium/settings/ScreenPinningSettings;Z)Z

    move-result v0

    return v0
.end method
