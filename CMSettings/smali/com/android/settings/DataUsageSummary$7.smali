.class Lorg/flerovium/settings/DataUsageSummary$7;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1179
    iput-object p1, p0, Lorg/flerovium/settings/DataUsageSummary$7;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1182
    iget-object v1, p0, Lorg/flerovium/settings/DataUsageSummary$7;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # getter for: Lorg/flerovium/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;
    invoke-static {v1}, Lorg/flerovium/settings/DataUsageSummary;->access$900(Lorg/flerovium/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1183
    .local v0, "disableAtLimit":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1186
    iget-object v1, p0, Lorg/flerovium/settings/DataUsageSummary$7;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    invoke-static {v1}, Lorg/flerovium/settings/DataUsageSummary$ConfirmLimitFragment;->show(Lorg/flerovium/settings/DataUsageSummary;)V

    .line 1190
    :goto_1
    return-void

    .line 1182
    .end local v0    # "disableAtLimit":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1188
    .restart local v0    # "disableAtLimit":Z
    :cond_1
    iget-object v1, p0, Lorg/flerovium/settings/DataUsageSummary$7;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    const-wide/16 v2, -0x1

    # invokes: Lorg/flerovium/settings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v1, v2, v3}, Lorg/flerovium/settings/DataUsageSummary;->access$1000(Lorg/flerovium/settings/DataUsageSummary;J)V

    goto :goto_1
.end method
