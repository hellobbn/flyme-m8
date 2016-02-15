.class Lorg/flerovium/settings/print/PrintSettingsFragment$2;
.super Lorg/flerovium/settings/print/PrintSettingsFragment$SettingsContentObserver;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/print/PrintSettingsFragment;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/print/PrintSettingsFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/flerovium/settings/print/PrintSettingsFragment$2;->this$0:Lorg/flerovium/settings/print/PrintSettingsFragment;

    invoke-direct {p0, p2}, Lorg/flerovium/settings/print/PrintSettingsFragment$SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 118
    iget-object v0, p0, Lorg/flerovium/settings/print/PrintSettingsFragment$2;->this$0:Lorg/flerovium/settings/print/PrintSettingsFragment;

    # invokes: Lorg/flerovium/settings/print/PrintSettingsFragment;->updateServicesPreferences()V
    invoke-static {v0}, Lorg/flerovium/settings/print/PrintSettingsFragment;->access$100(Lorg/flerovium/settings/print/PrintSettingsFragment;)V

    .line 119
    return-void
.end method
