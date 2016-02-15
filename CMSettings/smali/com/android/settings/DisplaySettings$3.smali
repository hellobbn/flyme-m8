.class Lorg/flerovium/settings/DisplaySettings$3;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/DisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lorg/flerovium/settings/DisplaySettings$3;->this$0:Lorg/flerovium/settings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lorg/flerovium/settings/DisplaySettings$3;->this$0:Lorg/flerovium/settings/DisplaySettings;

    # getter for: Lorg/flerovium/settings/DisplaySettings;->mFontSizePref:Lorg/flerovium/settings/FontDialogPreference;
    invoke-static {v0}, Lorg/flerovium/settings/DisplaySettings;->access$200(Lorg/flerovium/settings/DisplaySettings;)Lorg/flerovium/settings/FontDialogPreference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/flerovium/settings/FontDialogPreference;->click()V

    .line 493
    return-void
.end method
