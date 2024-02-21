-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_UsersOnGroups" (
    "userId" INTEGER NOT NULL,
    "groupId" INTEGER NOT NULL,

    PRIMARY KEY ("userId", "groupId"),
    CONSTRAINT "UsersOnGroups_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "UsersOnGroups_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES "Group" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_UsersOnGroups" ("groupId", "userId") SELECT "groupId", "userId" FROM "UsersOnGroups";
DROP TABLE "UsersOnGroups";
ALTER TABLE "new_UsersOnGroups" RENAME TO "UsersOnGroups";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
