.class Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedCertificateExpandableAdapter"
.end annotation


# instance fields
.field private mData:Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

.field final synthetic this$0:Lorg/flerovium/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lorg/flerovium/settings/TrustedCredentialsSettings;Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;)V
    .locals 2
    .param p2, "tab"    # Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 278
    iput-object p1, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lorg/flerovium/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 279
    new-instance v0, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;-><init>(Lorg/flerovium/settings/TrustedCredentialsSettings;Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lorg/flerovium/settings/TrustedCredentialsSettings$1;)V

    iput-object v0, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    .line 280
    invoke-virtual {p0}, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->load()V

    .line 281
    return-void
.end method

.method synthetic constructor <init>(Lorg/flerovium/settings/TrustedCredentialsSettings;Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;Lorg/flerovium/settings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/flerovium/settings/TrustedCredentialsSettings;
    .param p2, "x1"    # Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;
    .param p3, "x2"    # Lorg/flerovium/settings/TrustedCredentialsSettings$1;

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;-><init>(Lorg/flerovium/settings/TrustedCredentialsSettings;Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method

.method private inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 358
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    const v5, 0x101008c

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 361
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 363
    .local v1, "resId":I
    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getChild(II)Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->access$1200(Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 274
    invoke-virtual {p0, p1, p2}, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getChild(II)Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 312
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 342
    iget-object v0, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lorg/flerovium/settings/TrustedCredentialsSettings;

    invoke-virtual {p0, p1, p2}, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getChild(II)Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    iget-object v2, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->mTab:Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->access$1400(Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;)Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    # invokes: Lorg/flerovium/settings/TrustedCredentialsSettings;->getViewForCertificate(Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    invoke-static {v0, v1, v2, p4, p5}, Lorg/flerovium/settings/TrustedCredentialsSettings;->access$1500(Lorg/flerovium/settings/TrustedCredentialsSettings;Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 292
    iget-object v1, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v1}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->access$1200(Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 293
    .local v0, "certHolders":Ljava/util/List;, "Ljava/util/List<Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 294
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 296
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Landroid/os/UserHandle;
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 300
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v1}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->access$1200(Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->access$1200(Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->access$1200(Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 321
    if-nez p3, :cond_0

    .line 322
    iget-object v4, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lorg/flerovium/settings/TrustedCredentialsSettings;

    invoke-virtual {v4}, Lorg/flerovium/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 324
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, v0, p4}, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 327
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x1020016

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 328
    .local v2, "title":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 329
    .local v1, "profile":Landroid/os/UserHandle;
    iget-object v4, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lorg/flerovium/settings/TrustedCredentialsSettings;

    # getter for: Lorg/flerovium/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lorg/flerovium/settings/TrustedCredentialsSettings;->access$1300(Lorg/flerovium/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 330
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    const v4, 0x7f0906e8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 335
    :goto_0
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 337
    return-object p3

    .line 333
    :cond_1
    const v4, 0x7f0906e7

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public getListViewId(Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p1, "tab"    # Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 355
    # getter for: Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;->mExpandableList:I
    invoke-static {p1}, Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;->access$600(Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;)I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 347
    const/4 v0, 0x1

    return v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 351
    new-instance v0, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    iget-object v1, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;-><init>(Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 352
    return-void
.end method

.method public remove(Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "certHolder"    # Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 284
    iget-object v0, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v0, p1}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->remove(Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 285
    return-void
.end method
