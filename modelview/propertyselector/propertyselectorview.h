#ifndef PROPERTYSELECTORVIEW_H
#define PROPERTYSELECTORVIEW_H

#include "propertyselectormodel.h"
#include <QMainWindow>
#include <QListView>
#include <QActionGroup>
#include <QToolBar>

class QAction;

class PropertySelectorView : public QMainWindow
{
    Q_OBJECT

public:
    explicit PropertySelectorView(QAbstractListModel* model, QWidget* parent = 0);

signals:
    void selectionsMade(QModelIndexList selects);

public slots:
    void sendSelects(bool);
    void closeWindow(bool);
    void restoreSelects(QList<QPersistentModelIndex> selects);

private:
    QAction* addChoice(QString name, QString text);
    QListView* m_ListView;
    QActionGroup* m_ActionGroup;
    QAction* m_ApplyAction;
    QAction* m_CancelAction;
};

#endif // PROPERTYSELECTORVIEW_H
