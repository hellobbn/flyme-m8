.class Lorg/flerovium/settings/DataUsageSummary$6;
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
    .line 1158
    iput-object p1, p0, Lorg/flerovium/settings/DataUsageSummary$6;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1161
    iget-object v4, p0, Lorg/flerovium/settings/DataUsageSummary$6;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # getter for: Lorg/flerovium/settings/DataUsageSummary;->mBinding:Z
    invoke-static {v4}, Lorg/flerovium/settings/DataUsageSummary;->access$400(Lorg/flerovium/settings/DataUsageSummary;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1176
    :goto_0
    return-void

    .line 1163
    :cond_0
    iget-object v4, p0, Lorg/flerovium/settings/DataUsageSummary$6;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # getter for: Lorg/flerovium/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v4}, Lorg/flerovium/settings/DataUsageSummary;->access$500(Lorg/flerovium/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    .line 1164
    .local v1, "dataEnabled":Z
    :goto_1
    iget-object v4, p0, Lorg/flerovium/settings/DataUsageSummary$6;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # getter for: Lorg/flerovium/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v4}, Lorg/flerovium/settings/DataUsageSummary;->access$600(Lorg/flerovium/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, "currentTab":Ljava/lang/String;
    const-string v4, "mobile"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "SIM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1166
    :cond_1
    if-eqz v1, :cond_4

    .line 1167
    iget-object v4, p0, Lorg/flerovium/settings/DataUsageSummary$6;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # invokes: Lorg/flerovium/settings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v4, v2}, Lorg/flerovium/settings/DataUsageSummary;->access$700(Lorg/flerovium/settings/DataUsageSummary;Z)V

    .line 1175
    :cond_2
    :goto_2
    iget-object v2, p0, Lorg/flerovium/settings/DataUsageSummary$6;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # invokes: Lorg/flerovium/settings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lorg/flerovium/settings/DataUsageSummary;->access$800(Lorg/flerovium/settings/DataUsageSummary;Z)V

    goto :goto_0

    .end local v0    # "currentTab":Ljava/lang/String;
    .end local v1    # "dataEnabled":Z
    :cond_3
    move v1, v3

    .line 1163
    goto :goto_1

    .line 1171
    .restart local v0    # "currentTab":Ljava/lang/String;
    .restart local v1    # "dataEnabled":Z
    :cond_4
    iget-object v2, p0, Lorg/flerovium/settings/DataUsageSummary$6;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    invoke-static {v2}, Lorg/flerovium/settings/DataUsageSummary$ConfirmDataDisableFragment;->show(Lorg/flerovium/settings/DataUsageSummary;)V

    goto :goto_2
.end method
