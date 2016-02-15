.class Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedCertificateAdapter"
.end annotation


# instance fields
.field private final mData:Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

.field final synthetic this$0:Lorg/flerovium/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lorg/flerovium/settings/TrustedCredentialsSettings;Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;)V
    .locals 2
    .param p2, "tab"    # Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 371
    iput-object p1, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lorg/flerovium/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 372
    new-instance v0, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;-><init>(Lorg/flerovium/settings/TrustedCredentialsSettings;Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lorg/flerovium/settings/TrustedCredentialsSettings$1;)V

    iput-object v0, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    .line 373
    invoke-virtual {p0}, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->load()V

    .line 374
    return-void
.end method

.method synthetic constructor <init>(Lorg/flerovium/settings/TrustedCredentialsSettings;Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;Lorg/flerovium/settings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/flerovium/settings/TrustedCredentialsSettings;
    .param p2, "x1"    # Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;
    .param p3, "x2"    # Lorg/flerovium/settings/TrustedCredentialsSettings$1;

    .prologue
    .line 368
    invoke-direct {p0, p1, p2}, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lorg/flerovium/settings/TrustedCredentialsSettings;Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 388
    iget-object v2, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v2}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->access$1200(Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 389
    .local v0, "certHolders":Ljava/util/List;, "Ljava/util/List<Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 390
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 392
    :cond_0
    return v1
.end method

.method public getItem(I)Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->access$1200(Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 398
    int-to-long v0, p1

    return-wide v0
.end method

.method public getListViewId(Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p1, "tab"    # Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 381
    # getter for: Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;->mList:I
    invoke-static {p1}, Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;->access$900(Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 401
    iget-object v0, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lorg/flerovium/settings/TrustedCredentialsSettings;

    invoke-virtual {p0, p1}, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    iget-object v2, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->mTab:Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->access$1400(Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;)Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    # invokes: Lorg/flerovium/settings/TrustedCredentialsSettings;->getViewForCertificate(Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    invoke-static {v0, v1, v2, p2, p3}, Lorg/flerovium/settings/TrustedCredentialsSettings;->access$1500(Lorg/flerovium/settings/TrustedCredentialsSettings;Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 385
    new-instance v0, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    iget-object v1, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;-><init>(Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 386
    return-void
.end method

.method public remove(Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "certHolder"    # Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 377
    iget-object v0, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v0, p1}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->remove(Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 378
    return-void
.end method
