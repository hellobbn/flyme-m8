.class public Lorg/flerovium/settings/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1810
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lorg/flerovium/settings/DataUsageSummary;Lorg/flerovium/settings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "parent"    # Lorg/flerovium/settings/DataUsageSummary;
    .param p1, "app"    # Lorg/flerovium/settings/DataUsageSummary$AppItem;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 1814
    invoke-virtual {p0}, Lorg/flerovium/settings/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1828
    :goto_0
    return-void

    .line 1816
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1817
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "app"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1819
    new-instance v1, Lorg/flerovium/settings/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lorg/flerovium/settings/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 1820
    .local v1, "fragment":Lorg/flerovium/settings/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Lorg/flerovium/settings/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1821
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lorg/flerovium/settings/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1822
    invoke-virtual {p0}, Lorg/flerovium/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1823
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1824
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1825
    invoke-virtual {p0}, Lorg/flerovium/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b7c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1827
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 1832
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1833
    invoke-virtual {p0}, Lorg/flerovium/settings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/DataUsageSummary;

    .line 1834
    .local v0, "target":Lorg/flerovium/settings/DataUsageSummary;
    invoke-virtual {p0}, Lorg/flerovium/settings/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/flerovium/settings/DataUsageSummary$AppItem;

    # setter for: Lorg/flerovium/settings/DataUsageSummary;->mCurrentApp:Lorg/flerovium/settings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lorg/flerovium/settings/DataUsageSummary;->access$2802(Lorg/flerovium/settings/DataUsageSummary;Lorg/flerovium/settings/DataUsageSummary$AppItem;)Lorg/flerovium/settings/DataUsageSummary$AppItem;

    .line 1835
    # invokes: Lorg/flerovium/settings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lorg/flerovium/settings/DataUsageSummary;->access$100(Lorg/flerovium/settings/DataUsageSummary;)V

    .line 1836
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1840
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1841
    invoke-virtual {p0}, Lorg/flerovium/settings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/DataUsageSummary;

    .line 1842
    .local v0, "target":Lorg/flerovium/settings/DataUsageSummary;
    const/4 v1, 0x0

    # setter for: Lorg/flerovium/settings/DataUsageSummary;->mCurrentApp:Lorg/flerovium/settings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lorg/flerovium/settings/DataUsageSummary;->access$2802(Lorg/flerovium/settings/DataUsageSummary;Lorg/flerovium/settings/DataUsageSummary$AppItem;)Lorg/flerovium/settings/DataUsageSummary$AppItem;

    .line 1843
    # invokes: Lorg/flerovium/settings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lorg/flerovium/settings/DataUsageSummary;->access$100(Lorg/flerovium/settings/DataUsageSummary;)V

    .line 1844
    return-void
.end method
