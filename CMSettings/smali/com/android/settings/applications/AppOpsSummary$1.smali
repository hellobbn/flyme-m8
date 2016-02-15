.class Lorg/flerovium/settings/applications/AppOpsSummary$1;
.super Ljava/lang/Object;
.source "AppOpsSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/applications/AppOpsSummary;->resetCountersConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/applications/AppOpsSummary;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/applications/AppOpsSummary;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lorg/flerovium/settings/applications/AppOpsSummary$1;->this$0:Lorg/flerovium/settings/applications/AppOpsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lorg/flerovium/settings/applications/AppOpsSummary$1;->this$0:Lorg/flerovium/settings/applications/AppOpsSummary;

    # invokes: Lorg/flerovium/settings/applications/AppOpsSummary;->resetCounters()V
    invoke-static {v0}, Lorg/flerovium/settings/applications/AppOpsSummary;->access$000(Lorg/flerovium/settings/applications/AppOpsSummary;)V

    .line 204
    return-void
.end method
