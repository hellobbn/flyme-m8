.class Lorg/flerovium/settings/print/PrintJobSettingsFragment$1;
.super Ljava/lang/Object;
.source "PrintJobSettingsFragment.java"

# interfaces
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/print/PrintJobSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/print/PrintJobSettingsFragment;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/print/PrintJobSettingsFragment;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lorg/flerovium/settings/print/PrintJobSettingsFragment$1;->this$0:Lorg/flerovium/settings/print/PrintJobSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 1
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/flerovium/settings/print/PrintJobSettingsFragment$1;->this$0:Lorg/flerovium/settings/print/PrintJobSettingsFragment;

    # invokes: Lorg/flerovium/settings/print/PrintJobSettingsFragment;->updateUi()V
    invoke-static {v0}, Lorg/flerovium/settings/print/PrintJobSettingsFragment;->access$000(Lorg/flerovium/settings/print/PrintJobSettingsFragment;)V

    .line 60
    return-void
.end method
