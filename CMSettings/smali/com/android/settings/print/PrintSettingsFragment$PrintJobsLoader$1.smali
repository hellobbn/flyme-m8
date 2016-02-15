.class Lorg/flerovium/settings/print/PrintSettingsFragment$PrintJobsLoader$1;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/print/PrintSettingsFragment$PrintJobsLoader;->onStartLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/print/PrintSettingsFragment$PrintJobsLoader;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/print/PrintSettingsFragment$PrintJobsLoader;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lorg/flerovium/settings/print/PrintSettingsFragment$PrintJobsLoader$1;->this$0:Lorg/flerovium/settings/print/PrintSettingsFragment$PrintJobsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 1
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    .prologue
    .line 492
    iget-object v0, p0, Lorg/flerovium/settings/print/PrintSettingsFragment$PrintJobsLoader$1;->this$0:Lorg/flerovium/settings/print/PrintSettingsFragment$PrintJobsLoader;

    # invokes: Lorg/flerovium/settings/print/PrintSettingsFragment$PrintJobsLoader;->onForceLoad()V
    invoke-static {v0}, Lorg/flerovium/settings/print/PrintSettingsFragment$PrintJobsLoader;->access$500(Lorg/flerovium/settings/print/PrintSettingsFragment$PrintJobsLoader;)V

    .line 493
    return-void
.end method
